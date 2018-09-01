<template>

  <v-card class="rounded-10 transparent">
    <v-card-title class="blue-grey lighten-4">

        <span class="headline"><v-icon large>account_circle</v-icon> Iniciar Sesión</span>
      
    </v-card-title>
  <v-card-text>

      <v-form ref="loginForm" v-model="valid" color="blue">
        
        <v-text-field
          :error="errors['email']"
          :error-messages="errors['email']"
          :rules="emailRules"
          color="blue"
          label="Email"
          name="email"
          append-icon="mail"
          v-model="email">
        </v-text-field>

        <v-text-field
          :append-icon="showPass ? 'visibility_off' : 'visibility'"
          @click:append="() => (showPass = !showPass)"
          :rules="passwordRules"
          :type="showPass ? 'text' : 'password'"
          color="blue"
          label="Password"
          name="password"
          required
          v-model="password">
        </v-text-field>

      </v-form>

      <v-container grid-list-md text-xs-left>
        <v-layout row wrap>
          <v-flex xs12>
            <a class="recuperar-clave" v-on:click="verFormRecovery">
              Olvidastes tu Contraseña?
            </a>
          </v-flex>
        </v-layout>
        <v-layout row wrap>
          <v-flex xs12>
            <v-alert
              :type="alertOpts.type"
              v-model="alertOpts.show"
              dismissible>
              {{ alertOpts.message }}
            </v-alert>
          </v-flex>
        </v-layout>
      </v-container>
    </v-card-text>
    
    <v-card-actions>
      <v-spacer></v-spacer>
      <v-btn flat color="blue darken-2" class="white--text" @click.native="onSubmit" :loading="loginLoading">Ingresar</v-btn>

      <vue-recaptcha 
        ref="invisibleRecaptcha"
        :sitekey="siteKey"
        size="invisible"
        @verify="onVerify"
        @expired="onExpired"
      ></vue-recaptcha>

      <v-spacer></v-spacer>
    </v-card-actions>
  </v-card>
</template>


<script>
  import * as actions from '../../store/action-types'
  import withSnackbar from '../mixins/withSnackbar'
  import axios from 'axios';
  import VueRecaptcha from 'vue-recaptcha';
  import $ from "jquery";
  export default {
    mixins: [withSnackbar],
    components: { 
      "vue-recaptcha": VueRecaptcha
     },
    data () {
      return {
        alertOpts: {
          message: "",
          show: false,
          type: "info"
        },
        showPass: false,
        errors: [],
        internalAction: this.action,
        email: '',
        emailRules: [
          (v) => !!v || 'El correo es obligatorio'
        ],
        password: '',
        passwordRules: [
          (v) => !!v || 'La contraseña es obligatoria'
        ],
        valid: false,
        loginLoading: false,
        siteKey: "6LdEo20UAAAAAAVJi1AQHQ-6GbpzIYRg7sw4V2d2"
      }
    },
    props: {
      action: {
        type: String,
        default: null
      },
      show: {
        type: Boolean,
        default: true
      }
    },
    computed: {
      showLogin: {
        get () {
          if (this.internalAction && this.internalAction === 'login') return true
          return false
        },
        set (value) {
          if (value) this.internalAction = 'login'
          else this.internalAction = null
        }
      }
    },
    methods: {
      verFormRecovery () {
        window.location.href = '/recovery'
      },
      onSubmit: function () 
      {
        this.loginLoading = true
        this.$refs.invisibleRecaptcha.execute()
      },
      onVerify: function (responseFront) 
      {
        var self = this
        console.log('VERIFICAR', responseFront)
        axios.post('../api/recaptcha', 
        {
          token: responseFront
        })
        .then(function (responseBack) 
        {
          if ( responseBack.data.success ) 
          { 
            console.log('login')
            self.login()
          } 
          else 
          { 
            console.log('fallo', responseBack.data)
            this.loginLoading = false
            self.resetRecaptcha() 
          }
        })
        .catch(function (error) {
          console.log('error', error)
          self.loginLoading = false
          self.resetRecaptcha()

        });
      },
      onExpired: function () {
        console.log('expired')
        this.resetRecaptcha()
      },
      resetRecaptcha () {
        console.log('reset')

        this.$refs.invisibleRecaptcha.reset() // Direct call reset method
      },
      login () {
         console.log('finlogin')
        if(this.$refs.loginForm.validate()) {

          
          const credentials = {
            'tx_email': this.email,
            'password': this.password
          }

          this.$store.dispatch(actions.LOGIN, credentials).then(response => {

            this.loginLoading = false
            this.showLogin = false
            window.location = '/home'

          }).catch(error => {

            this.loginLoading = false

            if (error.response && error.response.status === 422) {

              this.alertOpts = {
                message: "Datos incorrectos!",
                show: true,
                type: "error"
              }

            } else {

              this.alertOpts = {
                message: "Ocurrio un error, por favor intente nuevamente!",
                show: true,
                type: "error"
              }

            }

          }).then(() => {
            this.loginLoading = false
          })
        }
      },
    }
  }
</script>

<style scoped lang="less">

</style>

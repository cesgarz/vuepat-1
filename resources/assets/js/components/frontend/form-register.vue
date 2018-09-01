<template>

  <v-card class="rounded-10 transparent">
    <v-card-title class="blue-grey lighten-4">

      <span class="headline"><v-icon large>person_add</v-icon>   Registrarse</span>

    </v-card-title>
    <v-card-text>

      <v-form ref="registerForm" v-model="valid" color="blue">

        <v-text-field
          :error="errors['username']"
          :error-messages="errors['username']"
          :rules="usernameRules"
          color="blue"
          label="Usuario"
          name="username"
          required
          v-model="username"
          append-icon="person"></v-text-field>

        <v-text-field
          :error="errors['email']"
          :error-messages="errors['email']"
          :rules="emailRules"
          color="blue"
          label="Correo"
          name="email"
          required
          v-model="email"
          append-icon="mail"></v-text-field>

        <v-text-field
          :append-icon="showPass ? 'visibility_off' : 'visibility'"
          :append-icon-cb="() => (showPass = !showPass)"
          :rules="passwordRules"
          :type="showPass ? 'text' : 'password'"
          color="blue"
          label="Contraseña"
          name="password"
          required
          v-model="password"></v-text-field>

          <v-text-field
          :rules="passwordConfirmationRules"
          :type="showPass ? 'text' : 'password'"
          color="blue"
          label="Confiirmar Contraseña"
          name="passwordConfirmation"
          required
          v-model="passwordConfirmation"
          append-icon="lock"></v-text-field>

      </v-form>

      <v-container grid-list-md text-xs-left>
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
      <v-btn flat color="blue darken-2" class="white--text" @click.native="onSubmit">Registrar</v-btn>

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
  import formHelper from '../../components/mixins/formHelper';
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
          show:    false,
          type:    "info"
        },
        siteKey: "6LdEo20UAAAAAAVJi1AQHQ-6GbpzIYRg7sw4V2d2",
        showPass: false,
        valid: false,
        errors: [],
        username: '',
        usernameRules: [
          (v) => !!v || 'El nombre de usuario es obligatorio',
          (v) => v.length >= 6 || 'El nombre de usuario debe tener almenos 6 caracteres'
        ],
        email: '',
        emailRules: [
          (v) => !!v || 'El correo es obligatorio',
          (v) => /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(v) || 'Email inválido'
        ],
        password: '',
        passwordRules: [
          (v) => !!v || 'La contraseña es obligatoria',
          (v) => v.length >= 6 || 'La contraseña debe tener almenos 6 caracteres'
        ],
        passwordConfirmation: '',
        passwordConfirmationRules: [
          (v) => v.length >= 6 || 'La contraseña debe tener almenos 6 caracteres',
          (v) => this.password === this.passwordConfirmation || 'Las contraseñas no coinciden'
        ],
      }
    },
    props: {},
    computed: {},
    methods: {
      onSubmit: function () {
        this.$refs.invisibleRecaptcha.execute()
      },
      onVerify: function (responseFront) {

        var self = this

        axios.post('../api/recaptcha', {
          token: responseFront
        })
        .then(function (responseBack) {
          if ( responseBack.data.success ) { 
            self.register()
          } 
          else { 
            self.resetRecaptcha() 
          }
        })
        .catch(function (error) {
          self.resetRecaptcha()
        });
      },
      onExpired: function () {
        this.resetRecaptcha()
      },
      resetRecaptcha () {
        this.$refs.invisibleRecaptcha.reset() // Direct call reset method
      },
      register () {

        if (this.$refs.registerForm.validate()) {
          
          const form = {
            'nb_usuario': this.username,
            'password':   this.password,
            'tx_email':   this.email,
          }

            this.$store.dispatch(actions.REGISTER, form).then(response => {
              
              this.login()

            }).catch(error => {

              let msg = '';
              
              if(error.hasOwnProperty('response'))
              {
                for (var idx in error.response.data.errors) {
                  msg = msg + ' ' + error.response.data.errors[idx];
                }

                switch (status) {
                  case 500:
                    msg = 'Error interno ->' + error.response.data.message
                    break;
                  case 404:
                    msg = '404 No Encontrado'
                  break;
                  case 401:
                    msg = 'Session invalida favor Ingresar nuevamente '
                    window.location.href = '/'
                  break;
                  case 429:
                    msg = 'Demasiadas peticiones'
                  break;
                }

                this.alertOpts = {
                        message: msg,
                        show:    true,
                        type:    "error"
                      }
                  
              }
              else
              {
                this.alertOpts = {
                        message: "Ocurrio un error, por favor intente registrarse nuevamente",
                        show:    true,
                        type:    "error"
                      }
              }
            }).then(() => {
              //nothing
            })
        }

      },
      login () {

          const credentials = {
            'tx_email': this.email,
            'password': this.password
          }

          this.$store.dispatch(actions.LOGIN, credentials).then(response => {

           window.location = '/home'

          }).catch(error => {
            
            this.alertOpts = {
              message: "Ocurrio un error, por favor intente ingresar nuevamente desde el Inicio de Sesion",
              show:    true,
              type:    "error"
            }


          }).then(() => {
            //nothing
          })
      },
    }
  }
</script>

<style scoped lang="less">

</style>
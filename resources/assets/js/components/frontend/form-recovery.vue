<template>
  <v-card>
    <v-card-title>
      <span class="headline">Recuperar Contraseña</span>
    </v-card-title>
    <v-card-text>
      <v-form v-model="valid" ref="resetPasswordForm">
        <v-text-field
          :rules="emailRules"
          label="Tu Correo"
          required
          v-model="internalEmail"></v-text-field>
        <v-text-field
          :append-icon="showPass ? 'visibility_off' : 'visibility'"
          :append-icon-cb="() => (showPass = !showPass)"
          :rules="passwordRules"
          :type="showPass ? 'text' : 'password'"
          hint="Al menos 6 caracteres"
          label="Contraseña"
          min="6"
          name="password"
          required
          v-model="password"></v-text-field>
        <v-text-field
          :append-icon="showPass ? 'visibility_off' : 'visibility'"
          :append-icon-cb="() => (showPass = !showPass)"
          :rules="confirPassRules"
          :type="showPass ? 'text' : 'password'"
          hint="Al menos 6 caracteres"
          label="Confirma la Contraseña"
          name="passwordConfirmation"
          min="6"
          v-model="passwordConfirmation"
          required></v-text-field>
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
      <v-btn
        class="white--text"
        color="blue darken-2"
        v-on:click="verFormLogin">Ya estoy registrado</v-btn>
      <v-btn
        @click.native="onSubmit"
        :color="done ? 'green' : 'blue darken-2'"
        :loading="loading"
        class="white--text">
             <v-icon v-if="done">done</v-icon>
             &nbsp;
             <template v-if="!done">Restablecer</template>
             <template v-else>Listo</template>
      </v-btn>

      <vue-recaptcha 
        ref="invisibleRecaptcha"
        :sitekey="siteKey"
        size="invisible"
        @verify="onVerify"
        @expired="onExpired"
      ></vue-recaptcha>

    </v-card-actions>
  </v-card>
</template>

<script>
  import * as actions from '../../store/action-types'
  import sleep from '../../utils/sleep'
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
        siteKey: "6LcDd20UAAAAAAlNkeHG_nW31treqMiS04pPWrj_",
        internalAction: this.action,
        internalEmail: this.email,
        loading: false,
        done: false,
        emailRules: [
          (v) => !!v || 'El email és obligatorio!',
          (v) => /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(v) || 'Email inválido'
        ],
        password: '',
        passwordConfirmation: '',
        passwordRules: [
          (v) => !!v || 'La contraseña es obligatoria',
          (v) => v.length >= 6 || 'La contraseña debe tener almenos 6 caracteres'
        ],
        confirPassRules: [
          (v) => !!v || 'La contraseña es obligatoria',
          (v) => v.length >= 6 || 'La contraseña debe tener almenos 6 caracteres',
          (v) => this.password === this.passwordConfirmation || 'Las contraseñas no coinciden'
        ],
        valid: false
      }
    },
    props: {
      action: {
        type: String,
        default: null
      },
      token: {
        type: String,
        default: null
      },
      email: {
        type: String,
        default: null
      }
    },
    computed: {
      showResetPassword: {
        get () {
          return this.internalAction && (this.internalAction === 'reset_password')
        },
        set (value) {
          if (value) this.internalAction = 'reset_password'
          else this.internalAction = null
        }
      }
    },
    methods: {
      verFormLogin () {
        //$(this.$parent.$el).slick('slickPrev');
        window.location.href = '/welcome'
      },
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
            self.reset()
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
      reset () {

        if (this.$refs.resetPasswordForm.validate()) {
          const user = {
            'email': this.internalEmail,
            'password': this.password,
            'password_confirmation': this.passwordConfirmation,
            'token': this.token
          }
          this.loading = true
          this.$store.dispatch(actions.RESET_PASSWORD, user).then(response => {
            this.loading = false
            this.done = true
            sleep(4000).then(() => {
              this.showResetPassword = false
              window.location = '/home'
            })
          }).catch(error => {

            this.loading = false

            this.alertOpts = {
              message: "Ocurrio un error, por favor intente nuevamente!",
              show: true,
              type: "error"
            }

            this.errors = error.response.data.errors

          }).then(() => {
            this.loading = false
          })
        }
      }
    }
  }
</script>

<style scoped lang="less">

  .card{
    background-color:transparent;

    .card__title{
      color:rgba(255,255,255,1);
      text-align:center ;

      span{
        width: 100%;
      }

    }

    .card__text{


    }

  }

</style>

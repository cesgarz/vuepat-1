<template>
  <v-card>
    <v-card-title>
      <span class="headline">Iniciar Sesión</span>
    </v-card-title>
    <v-card-text>
      <v-form ref="loginForm" v-model="valid" color="white">
        <v-text-field
          :error="errors['email']"
          :error-messages="errors['email']"
          :rules="emailRules"
          color="blue"
          dark
          label="Email"
          name="email"
          required
          v-model="email"></v-text-field>
        <v-text-field
          :append-icon="showPass ? 'visibility_off' : 'visibility'"
          :append-icon-cb="() => (showPass = !showPass)"
          :rules="passwordRules"
          :type="showPass ? 'text' : 'password'"
          color="blue"
          dark
          label="Password"
          name="password"
          required
          v-model="password"></v-text-field>
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
      <v-btn color="blue darken-2" class="white--text" @click.native="login" :loading="loginLoading">Ingresar</v-btn>
      <v-spacer></v-spacer>
    </v-card-actions>
  </v-card>
</template>


<script>
  import * as actions from '../../store/action-types'
  import withSnackbar from '../mixins/withSnackbar'
  import $ from "jquery";
  export default {
    mixins: [withSnackbar],
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
        loginLoading: false
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
        $(this.$parent.$el).slick('slickNext');
      },
      login () {

        if (this.$refs.loginForm.validate()) {

          this.loginLoading = true
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

      .recuperar-clave{
        color: rgba(255,255,255,1);
        transition: all 0.2s;

        &:hover{
          color: rgba(33,150,243,1);
        }

      }

      .alert{
        padding:6px;
      }

    }

  }

</style>

<template>
  <v-card>
    <v-card-title>
      <span class="headline">Registro</span>
    </v-card-title>
    <v-card-text>
      <v-form ref="registerForm" v-model="valid" color="white">
        <v-text-field
          :error="errors['username']"
          :error-messages="errors['username']"
          :rules="usernameRules"
          color="blue"
          dark
          label="Username"
          name="username"
          required
          v-model="username"></v-text-field>
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
          <v-text-field
          :rules="passwordConfirmationRules"
          :type="showPass ? 'text' : 'password'"
          color="blue"
          dark
          label="Password Confirmation"
          name="passwordConfirmation"
          required
          v-model="passwordConfirmation"></v-text-field>
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
      <v-btn color="blue darken-2" class="white--text" @click.native="register">Registrar</v-btn>
      <v-spacer></v-spacer>
    </v-card-actions>
  </v-card>
</template>


<script>
  import * as actions from '../../store/action-types'
  import withSnackbar from '../mixins/withSnackbar'
  import formHelper from '../../components/mixins/formHelper';
  import $ from "jquery";
  export default {
    mixins: [withSnackbar],
    data () {
      return {
        alertOpts: {
          message: "",
          show:    false,
          type:    "info"
        },
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
              
              this.alertOpts = {
                message: "Ocurrio un error, por favor intente registrarse nuevamente",
                show:    true,
                type:    "error"
              }


            }).then(() => {
              window.location = '/'
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
            window.location = '/'
          })
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
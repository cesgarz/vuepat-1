<template>
    
    <v-card class="rounded-10 transparent" >
    
    <v-card-title class="blue-grey lighten-4">
        <span class="headline"><v-icon large>account_circle</v-icon> Iniciar Sesión</span>
    </v-card-title>

    <v-form ref="loginForm" v-model="valido">    
    <v-card-text>

        <v-text-field
            v-model="form.email"
            :rules="rules.email"
            label="Correo *"
            append-icon="mail"
            color="blue"
        ></v-text-field>

        <v-text-field
            v-model="form.password"
            :rules="rules.password"
            label="Contraseña *"
            :append-icon ="showPass ? 'visibility_off' : 'visibility'"
            :type="showPass ? 'text' : 'password'"
            @click:append="showPass = !showPass"
            color="blue"
        ></v-text-field>

    </v-card-text>
    
    <v-card-actions>

        <v-container grid-list-md text-xs-left>
        <v-layout row wrap>
          
            <v-flex xs12>
            <v-btn block color="blue darken-2" class="white--text" @click.native="login()" :loading="loginLoading">Ingresar</v-btn>
            </v-flex>

            <v-flex xs12>
                <a class="recuperar-clave" @click="formRecovery()">Olvidastes tu Contraseña?</a>
            </v-flex>

        </v-layout>
        </v-container>

        <vue-recaptcha 
            ref="invisibleRecaptcha"
            :sitekey="siteKey"
            size="invisible"
            @verify="onVerify"
            @expired="onExpired"
        ></vue-recaptcha>

    </v-card-actions>
    </v-form>

    </v-card>

</template>

<script>
  import * as actions from '../../store/action-types'
  import withSnackbar from '../mixins/withSnackbar'
  import VueRecaptcha from 'vue-recaptcha'
  import rules from '../mixins/rules'

  export default {
    mixins: [withSnackbar, rules],
    components: 
    { 
      "vue-recaptcha": VueRecaptcha
    },
    data () {
      return {
        form: {
            email:    '',
            password: ''
        },
        showPass:       false,
        valido:         false,
        loginLoading:   false,
        siteKey:        "6LdEo20UAAAAAAVJi1AQHQ-6GbpzIYRg7sw4V2d2"
      }
    },
    methods: {
        formRecovery() 
        {
            window.location.href = '/recovery'
        },
        onSubmit() 
        {
            this.loginLoading = true
            this.$refs.invisibleRecaptcha.execute()
        },
        onVerify(responseFront) 
        {
            axios.post('../api/recaptcha',{token: responseFront})
            .then(respuesta => 
            {
                if ( respuesta.data.success ) 
                { 
                    this.login()
                } 
                else 
                { 
                    this.resetRecaptcha() 
                }
            })
            .catch(error => 
            {
                this.showError(error)
                this.resetRecaptcha()
            });
        },
        onExpired() 
        {
            this.resetRecaptcha()
        },
        resetRecaptcha () 
        {
            this.$refs.invisibleRecaptcha.reset()
        },
        login () 
        {
            if(this.$refs.loginForm.validate()) 
            {
                const credentials = {
                                    'email':    this.form.email,
                                    'password': this.form.password
                                    }

                this.$store.dispatch(actions.LOGIN, credentials)
                .then(response => 
                {
                    console.log('login', response)
                    //window.location = '/home'
                })
                .catch(error => 
                {
                    this.showError(error);
                })
                .then(() => 
                {
                    this.loginLoading = false
                })
            }
        },
    }
  }
</script>

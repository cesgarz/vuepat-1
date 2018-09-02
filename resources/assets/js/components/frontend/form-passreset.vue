<template>
    <v-dialog v-model="activo" persistent max-width="500px">
    <v-card class="rounded-10 transparent">

    <v-card-title class="blue-grey lighten-4">
        <span class="headline"><v-icon large>lock_open</v-icon> Recuperar Password</span>
    </v-card-title>

    <v-form v-model="valido" ref="resetPasswordForm">
    <v-card-text>

        <v-flex xs12>
        <v-text-field
            v-model="form.email"
            :rules="rules.email"
            label="Correo *"
            append-icon="mail"
            hint="Correo registrado para recuperar su contraseña"
        ></v-text-field>
        </v-flex> 

        <v-flex xs12>   
        <v-text-field
            v-model="form.password"
            :rules="rules.password"
            label="Contraseña *"
            :append-icon ="showPass ? 'visibility' :'visibility_off' "
            :type="showPass ? 'text' : 'password'"
            @click:append="showPass = !showPass"
            color="blue"
        ></v-text-field>        
        </v-flex>

        <v-flex xs12>   
        <v-text-field
            v-model="form.password_confirmation"
            :rules="rules.password_confirmation"
            label="Confirmar Contraseña *"
            :append-icon ="showPass ? 'visibility' :'visibility_off' "
            :type="showPass ? 'text' : 'password'"
            @click:append="showPass = !showPass"
            color="blue"
        ></v-text-field>        
        </v-flex>

        <vue-recaptcha 
        ref="invisibleRecaptcha"
        :sitekey="siteKey"
        size="invisible"
        @verify="onVerify"
        @expired="onExpired"
      ></vue-recaptcha>   

    </v-card-text>             
    
    <v-card-actions>

        <v-container grid-list-md text-xs-left>
        <v-layout row wrap>
            
            <v-flex xs12>
            <v-btn block @click="onSubmit()" color="primary" :loading="loading" dark>Restablecer Password</v-btn>
            </v-flex>

            <v-flex xs12>
            <v-spacer></v-spacer>
            <v-spacer></v-spacer>
            <v-btn block @click="formLogin() " color="error" dark>Regresar</v-btn>
            </v-flex>
        
        </v-layout>
        </v-container>
        
    </v-card-actions>

    </v-form>
    </v-card>
    </v-dialog>
</template>


<script>
  import sleep from '../../utils/sleep'
  import withSnackbar from '../mixins/withSnackbar'
  import VueRecaptcha from 'vue-recaptcha'
  import rules from '../mixins/rules'

  export default {
    mixins: [withSnackbar, rules],
    components: 
    { 
      "vue-recaptcha": VueRecaptcha
    },
    created()
    {
        let uri = window.location.search.substring(1); 
        let params = new URLSearchParams(uri);
        this.form.token =  params.get("token")

        if(!this.form.token)
        {
            this.showError('Token de Recuperacion de Contraseña Invalido ')
            sleep(3000).then(() => {
                window.location = '/'
            })
        }

    },
    data () {
      return {
        form: {
            email:                  '',
            password:               '',
            password_confirmation:  '',
            token:                  '' 
        },
        loading:    false,
        valido:     false,
        activo:     true,
        showPass:   false,
        siteKey:    "6LdEo20UAAAAAAVJi1AQHQ-6GbpzIYRg7sw4V2d2"
      }
    },
    methods: 
    {
        formLogin() 
        {
            window.location = '/'
        },
        onSubmit() 
        {
            if (this.$refs.resetPasswordForm.validate())
            {
                this.loading = true
                this.$refs.invisibleRecaptcha.execute()
            }
        },
        onVerify(responseFront) 
        {
            axios.post('../../api/recaptcha',{token: responseFront})
            .then(respuesta => 
            {
                if ( respuesta.data.success ) 
                { 
                    this.passReset()
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
        passReset()
        {
            
            axios.post('/api/password/reset', this.form)
            .then(respuesta => 
            {
                this.showMessage(respuesta.data.status)
            })
            .catch(error => 
            {
                this.showError(error);
            })
            .then(()=>
            {
                this.loading = false
                sleep(4000).then(() => {
                    window.location = '/'
                })
            })
            
      },
    }
  }
</script>

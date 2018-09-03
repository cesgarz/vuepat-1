<template>

  <v-card class="rounded-10 transparent">
    
    <v-card-title class="blue-grey lighten-4">
        <span class="headline"><v-icon large>person_add</v-icon> Registrarse</span>
    </v-card-title>
    
    <v-form v-model="valido" ref="registerForm" >
    <v-card-text>

        <v-flex xs12>
        <v-text-field
            v-model="form.nb_usuario"
            :rules="rules.requerido"
            label="Usuario *"
            append-icon="person"
        ></v-text-field>
        </v-flex> 

        <v-flex xs12>
        <v-text-field
            v-model="form.email"
            :rules="rules.email"
            label="Correo *"
            append-icon="mail"
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

        <v-flex xs12 v-show="done">
            <v-icon color="green">done</v-icon><v-icon color="green">email</v-icon>   
            <div color="green">Se ha enviado un correo para activar el Usuario</div>  
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
            <v-btn block @click="onSubmit()" color="primary" :loading="loading" dark>Registrar</v-btn>
            </v-flex>

            <v-flex xs12>
            <v-spacer></v-spacer>
            <v-spacer></v-spacer>
            <v-btn block @click="formLogin() " color="error" dark>ya poseeo una cuenta</v-btn>
            </v-flex>
        
        </v-layout>
        </v-container>
        
    </v-card-actions>

    </v-form>
    </v-card>
</template>


<script>
  import * as actions from '../../store/action-types'
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
    data () {
      return {
        form:{
            nb_usuario:             '',
            email:                  '',
            password:               '',
            password_confirmation:  ''
        },
        loading:    false,
        valido:     false,
        activo:     true,
        showPass:   false,
        done:       false,
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
            if (this.$refs.registerForm.validate())
            {
                this.loading = true
                this.$refs.invisibleRecaptcha.execute()
            }
        },
        onVerify(responseFront) 
        {
            console.log('verificar')
            axios.post('../../api/recaptcha',{token: responseFront})
            .then(respuesta => 
            {
                if ( respuesta.data.success ) 
                { 
                    this.register()
                } 
                else 
                { 
                    this.resetRecaptcha()
                    
                }
            })
            .catch(error => 
            {
                this.showError(error)
                this.loading = false
                this.resetRecaptcha()
            });
        },
        onExpired() 
        {
           console.log('expira') 
           this.resetRecaptcha()
        },
        resetRecaptcha () 
        {
           console.log('reset') 
           this.$refs.invisibleRecaptcha.reset()
        },
        register () {
          
           console.log('registrar')
            this.$store.dispatch(actions.REGISTER, this.form).then(response => {
              
              this.done    = true
              this.$refs.registerForm.reset()
              sleep(4000).then(() => {
                    this.done    = false
              })

            }).catch(error =>
            {
                this.showError(error);
            })
            .then(() => 
            {
                this.loading = false
            })
      },
   }
}
</script>

<style scoped lang="less">

</style>
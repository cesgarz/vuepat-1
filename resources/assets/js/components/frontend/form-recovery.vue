<template>

  <v-card class="rounded-10 transparent">

    <v-card-title class="blue-grey lighten-4">
        <span class="headline"><v-icon large>lock</v-icon>  Recuperar Contraseña</span>
    </v-card-title>

    <v-form ref="recoveryForm" v-model="valido">
    <v-card-text>

        <v-flex xs12>
        <v-text-field
            v-model="form.email"
            :rules="rules.email"
            label="Correo *"
            append-icon="mail"
            hint="Correo registrado para recuperar su contraseña"
            persistent-hint
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
            <v-btn block @click="onSubmit()" color="primary" :loading="loading" dark>Recuperar Contraseña</v-btn>
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
    data () {
      return {
        form:{
            email: ''
        },
        siteKey: "6LdEo20UAAAAAAVJi1AQHQ-6GbpzIYRg7sw4V2d2",
        loading: false,
        valido: false
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
            if (this.$refs.recoveryForm.validate())
            {
                this.loading = true
                this.$refs.invisibleRecaptcha.execute()
            }
        },
        onVerify(responseFront) 
        {
            axios.post('../api/recaptcha',{token: responseFront})
            .then(respuesta => 
            {
                if ( respuesta.data.success ) 
                { 
                    this.recovery()
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
        recovery()
        {
                       
            axios.post('/api/password/email', this.form)
            .then(respuesta => 
            {
                this.showMessage(respuesta.data.status)
                sleep(4000).then(() => {
                    window.location = '/'
                })
            })
            .catch(error => 
            {
                this.showError(error);
            })
            .then(()=>
            {
                this.loading = false
            })
            
        },
 
    }
  }
</script>

<template>

  <v-card class="rounded-10 transparent">

    <v-card-title class="blue-grey lighten-4">
        <span class="headline"><v-icon large>how_to_reg</v-icon> Confirmacion de Usuario</span>
    </v-card-title>

    <v-form ref="recoveryForm" v-model="valido">
    <v-card-text>

        <v-flex xs12>
        </v-flex> 

        <v-chip close :color="tipo" text-color="white">
        <v-avatar>
            <div v-if="tipo=='success'"><v-icon>check_circle</v-icon></div>
            <div v-else><v-icon>error</v-icon></div>
        </v-avatar>
         <h3>{{mensaje}}</h3>
        </v-chip>
                
    </v-card-text>

    <v-card-actions>

        <v-container grid-list-md text-xs-left>
        <v-layout row wrap>
            
            <v-flex xs12>
            <v-spacer></v-spacer>
            <v-spacer></v-spacer>
            <v-btn block @click="formLogin() " color="primary" dark>Formulario  de Ingreso</v-btn>
            </v-flex>
        
        </v-layout>
        </v-container>
        
    </v-card-actions>
    
    </v-form>
    

  </v-card>
</template>

<script>

  export default {
    data () {
      return {
        valido: false
        }
    },
    props:['mensaje', 'tipo'],
    methods: 
    {
        formLogin() 
        {
            window.location = '/'
        },
    }
  }
</script>

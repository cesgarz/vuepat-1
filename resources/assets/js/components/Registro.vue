<template>
     <div>
    <v-stepper v-model="e1">
    <v-stepper-header>
      
      <v-stepper-step :complete="e1 > 1" color="green" step="1">Datos Personales</v-stepper-step>

      <v-divider></v-divider>

      <v-stepper-step :complete="e1 > 2" color="green" step="2">Datos Vivienda</v-stepper-step>

      <v-divider></v-divider>

      <v-stepper-step :complete="e1 > 3" color="green" step="3">Datos Laborales</v-stepper-step>

      <v-divider></v-divider>

      <v-stepper-step :complete="e1 > 3" color="green" step="4">Motivo del Viaje</v-stepper-step>

      <v-divider></v-divider>

      <v-stepper-step step="5">Datos Familiares</v-stepper-step>
     
    </v-stepper-header>

    <v-stepper-items>

      <v-stepper-content step="1">
        
        <datos-personales :validar="datos.personales.valido" @completado="completar('personales', $event)"></datos-personales>
        <v-spacer></v-spacer>
        <v-btn color="primary" @click="validar('personales')" >Siguiente</v-btn>
        
      </v-stepper-content>

      <v-stepper-content step="2">
        
        <datos-situacionales></datos-situacionales>
        <v-spacer></v-spacer>
        <v-btn color="primary" @click="e1 = 1">Anterior</v-btn>
        <v-btn color="primary" @click="e1 = 3">Siguiente</v-btn>
        
      </v-stepper-content>

      <v-stepper-content step="3">
        
        <datos-laborales></datos-laborales>
        <v-spacer></v-spacer>
        <v-btn color="primary" @click="e1 = 2">Anterior</v-btn>
        <v-btn color="primary" @click="e1 = 4">Siguiente</v-btn>

      </v-stepper-content>

      <v-stepper-content step="4">

        <motivo-salida></motivo-salida>
        <v-spacer></v-spacer>
        <v-btn color="primary" @click="e1 = 3">Anterior</v-btn>
        <v-btn color="primary" @click="e1 = 5">Siguiente</v-btn>

      </v-stepper-content>

      <v-stepper-content step="5">

        <datos-familiares></datos-familiares>
        <v-spacer></v-spacer>
        <v-btn color="primary" @click="e1 = 4">Anterior</v-btn>

      </v-stepper-content>

    </v-stepper-items>
  </v-stepper>
  
  
</div>
</template>

<script>
export default {
name: 'home-view',
  data () {
      return {
        e1: 0,
        datos:{
            personales: 
            {
                valido:     false,
                completado: false
            },
            familiares: 
            {
                valido:     false,
                completado: false
            },
            laborales: 
            {
                valido:     false,
                completado: false
            },
            situacional: 
            {
                valido:     false,
                completado: false
            },
            motivacion: 
            {
                valido:     false,
                completado: false
            },
        }
      }
    },
    methods:
    {
      validar(datos)
      {
        switch (datos) 
        {
            case 'personales':
                if(this.datos.personales.valido) { this.datos.personales.valido = false};
                break;
            case 'familiares':
                if(this.datos.familiares.valido) {this.datos.familiares.valido = false};
                break;
            case 'laborales':
                if(this.datos.laborales.valido) {this.datos.laborales.valido = false};
                break;
            case 'situacional':
                if(this.datos.situacional.valido) {this.datos.situacional.valido = false};
                break;
            case 'motivacion':
                if(this.datos.motivacion.valido) {this.datos.motivacion.valido = false};
                break;
            default:
            break;
        }
      },
      completar(datos, completado)
      {
        console.log('tipo',datos, completado);
        
        switch (datos) 
          {
            case 'personales':
                    
                if(completado)
                {
                    //this.datos.personales.completado = true;
                    this.e1 = 2;
                }
                break;
            
            default:
                break;
        }
      }
    }
}
</script>


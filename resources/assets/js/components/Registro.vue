<template>
     <div>
    <v-stepper v-model="etapa">
    <v-stepper-header>
      
      <v-stepper-step :complete="etapa > 1" color="green" step="1">Datos Personales</v-stepper-step>

      <v-divider></v-divider>

      <v-stepper-step :complete="etapa > 2" color="green" step="2">Datos Familiares</v-stepper-step>

      <v-divider></v-divider>

      <v-stepper-step :complete="etapa > 3" color="green" step="3">Datos Vivienda</v-stepper-step>

      <v-divider></v-divider>

      <v-stepper-step :complete="etapa > 3" color="green" step="4">Motivo del Viaje</v-stepper-step>

      <v-divider></v-divider>

      <v-stepper-step step="5">Datos Laborales</v-stepper-step>
     
    </v-stepper-header>

    <v-stepper-items>

      <v-stepper-content step="1">
        
        <datos-personales :validar="datos.personales.valido" @completado="completar('personales', $event)"></datos-personales>
        <v-spacer></v-spacer>
        <v-btn color="primary" @click="etapa = 2" v-show="datos.personales.completado">Siguiente <v-icon>navigate_next</v-icon></v-btn>
        
      </v-stepper-content>

      <v-stepper-content step="2" v-if="etapa > 0">
        
        <datos-familiares :validar="datos.familiares.valido" @completado="completar('familiares', $event)"></datos-familiares>
        <v-spacer></v-spacer>
        <v-btn color="primary" @click="etapa = 1"><v-icon>navigate_before</v-icon> Anterior</v-btn>
        <v-btn color="primary" @click="etapa = 3" v-show="datos.familiares.completado">Siguiente <v-icon>navigate_next</v-icon></v-btn>
        
      </v-stepper-content>

      <v-stepper-content step="3" v-if="etapa > 1">
        
        <datos-situacionales :validar="datos.situacional.valido" @completado="completar('situacional', $event)"></datos-situacionales>
        <v-spacer></v-spacer>
        <v-btn color="primary" @click="etapa = 2"><v-icon>navigate_before</v-icon> Anterior</v-btn>
        <v-btn color="primary" @click="etapa = 4" v-show="datos.situacional.completado">Siguiente <v-icon>navigate_next</v-icon></v-btn>

      </v-stepper-content>

      <v-stepper-content step="4" v-if="etapa > 2">

        <motivo-salida :validar="datos.migracion.valido" @completado="completar('migracion', $event)"></motivo-salida>
        <v-spacer></v-spacer>
        <v-btn color="primary" @click="etapa = 3"><v-icon>navigate_before</v-icon> Anterior</v-btn>
        <v-btn color="primary" @click="etapa = 5" v-show="datos.migracion.completado">Siguiente <v-icon>navigate_next</v-icon></v-btn>

      </v-stepper-content>

      <v-stepper-content step="5" v-if="etapa > 3">

        <datos-laborales :validar="datos.laborales.valido" @completado="completar('laborales', $event)"></datos-laborales>
        <v-spacer></v-spacer>
        <v-btn color="primary" @click="etapa = 4"><v-icon>navigate_before</v-icon> Anterior</v-btn>
        <v-btn dark color="red" href="/PlanillaPdf" target="_bank" v-show="datos.laborales.completado">Ver Planilla <v-icon>print</v-icon></v-btn>

      </v-stepper-content>

    </v-stepper-items>
  </v-stepper>
  
 <!-- <pre>{{$data}}</pre>-->
</div>
</template>

<script>
export default {
name: 'home-view',
  data () {
      return {
        etapa: 0,
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
            migracion: 
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
        console.log('completar datos:', datos, 'status:', completado);
        this.datos[datos].completado = completado;
      }
    }
}
</script>


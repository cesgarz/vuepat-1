<template>
    <v-layout>
        
    
        
   
    <v-card>

        <v-card-title class="light-blue darken-3 white--text">
            <h2>Planilla de Registro</h2>  
        </v-card-title>

        <v-card-text>
<v-form>
            <v-layout row wrap>
                
            <v-flex xs12 text-lg-left>
                DECLARO que los datos consignados en el presente registro son correctos, completos y fiel
                expresión de la verdad, comprometiéndome a comunicar en forma fehaciente cualquier cambio
                que se produzca sobre los mismos.
            </v-flex>
                 
            <v-flex xs12>
                <v-checkbox label="Aceptar" 
                v-model="confirmacion" 
                value="si" >
                </v-checkbox>
            </v-flex>

            <v-flex xs12>
                 <v-btn dark color="red" href="/PlanillaPdf" target="_bank" v-show="confirmacion">Ver Planilla de Registro<v-icon>assignment</v-icon></v-btn>
            </v-flex>
                   
            </v-layout>
            
    
</v-form>
        </v-card-text>
    
    </v-card>
</v-layout>
</template>

<script>
export default {
data () {
      return {
        confirmacion: false,
        confirmado: false
      }
    },
}
</script>

<style>

</style>

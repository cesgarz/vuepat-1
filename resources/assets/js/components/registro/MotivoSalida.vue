<template>
    <v-card>
    <v-card-text>
    <v-layout wrap>

        <v-flex xs12 sm6>
            <v-menu
                ref="picker"
                v-model="picker"
                full-width
                min-width="290px"
                lazy
            >
                <v-text-field
                slot="activator"
                v-model="form.fe_nacimiento"
                :rules="rules.fecha"
                label="Fecha de salida de Venezuela"
                prepend-icon="event"
                readonly
                required
                ></v-text-field>
                <v-date-picker 
                v-model="form.fe_nacimiento" locale="es" 
                :max="new Date().toISOString().substr(0, 10)" 
                min="1950-01-01">
                </v-date-picker>
            </v-menu>
         </v-flex>
         <v-flex sm6></v-flex>
        
    
        <v-flex sm6>
            <v-select
            :items="['Oferta de Trabajo Recibida','Busqueda de nuevas experiencias','Situación económica','Estudios','Otros' ]"
            label="Motivo"
            v-model="form.motivo"
            required
            prepend-icon="directions_run"
            ></v-select>
        </v-flex>

        <v-flex sm6>
         <v-text-field v-show="form.motivo == 'Otros'"
          name="name"
          label="Indique Motivo"
          id="id"
        ></v-text-field>
        </v-flex>

        <v-flex sm6>
            <v-select
            :items="['Propios','Crédito', 'Prestamo','Otros']"
            label="Recursos para el viaje"
            v-model="form.recursos"
            required
            prepend-icon="credit_card"
            ></v-select>
        </v-flex>

        <v-flex sm6>
         <v-text-field v-show="form.recursos == 'Otros'"
          name="name"
          label="Indique Recursos"
          id="id"
        ></v-text-field>
        </v-flex>

        <v-flex sm6>
            <v-select
            :items="['Solo', 'Con su Pareja', 'Con el núcleo Familiar', 'En Grupo de Amigos', 'Otros']"
            label="El Viaje lo Realizo"
            v-model="form.grupo"
            required
            prepend-icon="group"
            ></v-select>
        </v-flex>

        <v-flex sm6>
         <v-text-field v-show="form.grupo == 'Otros'"
          name="name"
          label="Indique con quien(es) realizo el Viaje"
          id="id"
        ></v-text-field>
        </v-flex>

        <v-flex sm4>
        <v-radio-group v-model="row" row label="Medio de Transporte">
            <v-icon>directions_boat</v-icon>
        <v-radio label="" value="Maritimo" ></v-radio>
        <v-icon>directions_bus</v-icon>
        <v-radio label="" value="Terrestre"></v-radio>
        <v-icon>flight</v-icon>
        <v-radio label="" value="Aereo"></v-radio>
        
        </v-radio-group>
        </v-flex>

        <v-flex sm2>
         <v-text-field v-show="row"
          name="name"
          v-model="row"
          label="Transporte"
          readonly
          id="id"
        ></v-text-field>
        </v-flex>


      


    </v-layout>
    </v-card-text>
    </v-card>
</template>

<script>
import formHelper   from '../../components/mixins/formHelper';
import withSnackbar from '../../components/mixins/withSnackbar';

export default {
    name: 'datos-personales',
    mixins: [ formHelper, withSnackbar ],
    data() 
    {
        return {

            form: {
                id_migracion:       null,
                id_persona:         null,
                id_motivo:          null,
                tx_motivo:          null,
                id_recurso:         null,
                tx_recurso:         null,
                id_grupo_migracion: null,
                tx_grupo_migracion: null,
                id_transporte:      null,
                fe_salida:          null,
                tx_observaciones:   null,
                id_status:          null,
                id_usuario:         null,
            },
            listas:{
                motivo:         [],
                recurso:        [],
                grupoMigracion: [],
            },

        }
    },
    watch:{

             picker (val) {
                    val && this.$nextTick(() => (this.$refs.picker.activePicker = 'YEAR'))
                }
    }
}
</script>

<style>

</style>

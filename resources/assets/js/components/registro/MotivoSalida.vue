<template>
    <v-card>
    <v-card-text>
    <v-form ref="form" v-model="valido" lazy-validation>
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
                v-model="form.fe_salida"
                :rules="rules.fecha"
                label="Fecha de salida de Venezuela"
                prepend-icon="event"
                readonly
                required
                ></v-text-field>
                <v-date-picker 
                v-model="form.fe_salida" locale="es" 
                :max="new Date().toISOString().substr(0, 10)" 
                min="1950-01-01">
                </v-date-picker>
            </v-menu>
         </v-flex>
         <v-flex sm6></v-flex>

        <v-flex sm6>
            <v-select
            :items="listas.motivo"
            item-text="nb_motivo"
            item-value="id_motivo"
            v-model="form.id_motivo"
            :rules="rules.select"
            label="Motivo de salida del Pais"
            prepend-icon="directions_run"
            ></v-select>
        </v-flex>

        <v-flex sm6>
            <v-text-field v-if="form.id_motivo == 5"
            v-model="form.tx_motivo"
            :rules="rules.requerido"
            label="Indique Motivo del salida del pais"
            ></v-text-field>
        </v-flex>

        <v-flex sm6>
            <v-select
            :items="listas.recurso"
            item-text="nb_recurso"
            item-value="id_recurso"
            v-model="form.id_recurso"
            :rules="rules.select"
            label="Recursos para el viaje"
            prepend-icon="credit_card"
            ></v-select>
        </v-flex>

        <v-flex sm6>
            <v-text-field v-if="form.id_recurso == '4'"
            v-model="form.tx_recurso"
            :rules="rules.requerido"
            label="Indique Recursos"
            ></v-text-field>
        </v-flex>

        <v-flex sm6>
            <v-select
            :items="listas.grupoMigracion"
            item-text="nb_grupo_migracion"
            item-value="id_grupo_migracion"
            v-model="form.id_grupo_migracion"
            :rules="rules.select"
            label="El Viaje lo Realizo"
            prepend-icon="group"
            ></v-select>
        </v-flex>

        <v-flex sm6>
            <v-text-field v-if="form.id_grupo_migracion == 5"
            v-model="form.tx_grupo_migracion"
            :rules="rules.requerido"
            label="Indique con quien(es) realizo el Viaje"
            ></v-text-field>
        </v-flex>

        <v-flex sm4>
            <v-radio-group v-model="form.id_transporte" row label="Medio de Transporte " :rules="rules.requerido">
            <v-icon>directions_boat</v-icon>
                <v-radio label="" :value="1" ></v-radio>
            <v-icon>directions_bus</v-icon>
                <v-radio label="" :value="2"></v-radio>
            <v-icon>flight</v-icon>
                <v-radio label="" :value="3"></v-radio>
        </v-radio-group>
        </v-flex>

        <v-flex sm2>
            <v-select v-show="form.id_transporte"
            :items="listas.transporte"
            item-text="nb_transporte"
            item-value="id_transporte"
            v-model="form.id_transporte"
            label="Transporte"
            ></v-select>
        </v-flex>
    </v-layout>
    <v-btn outline color="primary" dark @click="store">guardar</v-btn>
    <v-btn outline color="primary" dark @click="update">actualizar</v-btn>
    <pre>{{$data}}</pre>

    </v-form>
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
            tabla: 'migracion',
            form: {
                id_migracion:       null,
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
                transporte:     [],
            },

        }
    },
    watch:
    {
        picker (val) 
        {
            val && this.$nextTick(() => (this.$refs.picker.activePicker = 'YEAR'))
        }
    },
    methods:
    {
        getData()
        {
            axios.get(this.basePath +  'usuario/' + this.$store.getters.user.id_usuario)
            .then(respuesta => 
            {
                this.datos = respuesta.data;
            })
            .catch(error => 
            {
                this.showError(error);
            })

        },
        store()
        {
            this.form.id_status  = 1;
            this.form.id_usuario = this.$store.getters.user.id_usuario;
            
            if (this.$refs.form.validate()) 
            {  
                axios.post(this.basePath, this.form)
                .then(respuesta => 
                {
                    this.showMessage(respuesta.data.msj)
                    this.$emit('completado', true);
                })
                .catch(error => 
                {
                    this.showError(error);
                    this.$emit('completado', false);
                })
            }
        },
        update()
        {
            if (this.$refs.form.validate()) 
            {
                axios.put(this.basePath + this.form.id_migracion, this.form)
                .then(respuesta => 
                {
                    this.showMessage(respuesta.data.msj)
                    this.$emit('completado', true);
                })
                .catch(error => 
                {
                    this.showError(error);
                })
            }
        }
    }

}
</script>

<style>

</style>

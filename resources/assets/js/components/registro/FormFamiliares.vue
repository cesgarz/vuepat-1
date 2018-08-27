<template>
    <v-form ref="form" v-model="valido" lazy-validation>
    <v-card>
    <v-card-text>
    <v-layout row wrap>
        
        <v-flex sm6>
            <v-select
            :items="listas.parentesco"
            item-text="nb_parentesco"
            item-value="id_parentesco"
            v-model="form.id_parentesco"
            :rules="rules.select"
            label="Parentesco*"   
            prepend-icon="group"         
            ></v-select>
        </v-flex>

        <v-flex sm6>
            <v-text-field
            v-model="form.tx_cedula"
            :rules="rules.requerido"
            label="Cedula*"
            hint="SI no posee colocar la de algun padre"
            ></v-text-field>
        </v-flex>

        <v-flex sm6>
            <v-text-field
            v-model="form.nb_nombre"
            :rules="rules.requerido"
            label="Nombres*"
            ></v-text-field>
        </v-flex>

        <v-flex sm6>
            <v-text-field
            v-model="form.nb_apellido"
            :rules="rules.requerido"
            label="Apellidos*"
            ></v-text-field>
        </v-flex>

        <v-flex sm4>
        <v-radio-group v-model="form.tx_sexo" row prepend-icon="wc" :rules="rules.radio">
            <v-radio label="M" value="M" ></v-radio>
            <v-radio label="F" value="F"></v-radio>
        </v-radio-group>
        </v-flex>

        <v-flex sm8>
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
            label="Fecha de Nacimiento*"
            prepend-icon="event"
            readonly
            
            ></v-text-field>
            <v-date-picker v-model="form.fe_nacimiento" locale="es" 
            :max="new Date().toISOString().substr(0, 10)" 
            min="1950-01-01"></v-date-picker>
            </v-menu>
          </v-flex>

         <v-flex sm12>
            <v-select
            :items="listas.mision"
            item-text="nb_mision"
            item-value="id_mision"
            v-model="form.misiones"
            :rules="rules.select"
            label="Programa o mision recibido"
            prepend-icon="star_border"
            multiple
            chips
            deletable-chips
            
            ></v-select>
        </v-flex>

        <v-flex xs12 sm3>
          <v-checkbox
            label="Posee anguna Discapacidad?"
            v-model="form.bo_discapacidad"
            prepend-icon="accessible"
          ></v-checkbox>
        </v-flex>
        
        <v-flex sm4 v-if="form.bo_discapacidad">
            <v-select
            :items="listas.tipoDiscapacidad"
            item-text="nb_tipo_discapacidad"
            item-value="id_tipo_discapacidad"
            v-model="form.id_tipo_discapacidad"
            label="Tipo de Discapacidad"
            
            ></v-select>
        </v-flex>

        <v-flex sm4 v-if="form.id_tipo_discapacidad == '1'">
            <v-select
            :items="['Miembros  superiores', 'Miembros  inferiores']"
            label="Discapacidad Fisica"
            
            ></v-select>
        </v-flex>

        <v-flex sm4 v-if="form.id_tipo_discapacidad == '2'">
            <v-select
            :items="['Auditiva', 'Visual']"
            label="Discapacidad Sensorial"
            
            ></v-select>
        </v-flex>

        <v-flex sm4 v-if="form.id_tipo_discapacidad == '4'">
            <v-text-field
            v-model="form.tx_discapacidad"
            label="Otros (Indique)"
            hint="indique discapacidad"
            ></v-text-field>
        </v-flex>

    </v-layout>
    </v-card-text>
    <v-card-actions>
        <form-buttons
        @update="update"
        @store="store"
        @clear="clear"
        @cancel="cancel"
        :btnAccion="btnAccion"
        :valido="valido">
        </form-buttons>
    </v-card-actions>
    </v-card>
    </v-form>
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
            tabla: 'persona',
            form: {
                id_persona:       null,
                nb_nombre:        null,
                nb_apellido:      null,
                tx_cedula:        null,
                tx_sexo:          null,
                fe_nacimiento:    null,
                id_estado_civil:  1,
                id_parentesco:    null,
                tx_telefono:      null,
                tx_celular:       null,
                tx_observaciones: null,
                id_status:        1,
                id_usuario:       null,
                id_discapacidad:  null,
                misiones:         [],
                bo_discapacidad:  false,
                id_tipo_discapacidad: null,
                id_discapacidad:  null,
                tx_discapacidad:  null   
            },
            listas:{
                estadoCivil:      [],
                parentesco:       [],
                tipoDiscapacidad: [],
                mision:           []
            },
 
        }
    },
    watch:
    {
        discapacidad(val)
        {
            if(!val)
            {
                this.tipoDiscap = null
            }
        }
    },
    methods:
    {
        getData()
        {
            
            /*
            axios.get(this.basePath + this.$store.getters.user.id_usuario)
            .then(respuesta => 
            {
                this.datos = respuesta.data;
            })
            .catch(error => 
            {
                this.showError(error);
            })
            */
        },
        store()
        {
            this.form.id_status  = 1;
            this.form.id_estado_civil  = 1;
            this.form.id_usuario = this.$store.getters.user.id_usuario

            if (this.$refs.form.validate()) 
            {
                axios.post(this.basePath, this.form)
                .then(respuesta => 
                {
                    this.showMessage(respuesta.data.msj)
                    this.$emit('cerrarModal');
                })
                .catch(error => 
                {
                    this.showError(error);
                })
            }
        },
        update()
        {
            axios.put(this.basePath + this.form.id_persona, this.form)
            .then(respuesta => 
            {
                this.showMessage(respuesta.data.msj)
                this.$emit('cerrarModal');
            })
            .catch(error => 
            {
                this.showError(error);
            })
        }
    }
}
</script>

<style>

</style>

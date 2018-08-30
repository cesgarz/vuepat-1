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
            mask="V-########"
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
            :close-on-content-click="false"
            v-model="picker"
            full-width
            min-width="290px"
            lazy
            >
            <v-text-field
            slot="activator"
            v-model="dates.fe_nacimiento"
            :rules="rules.fecha"
            label="Fecha de Nacimiento*"
            prepend-icon="event"
            readonly
            
            ></v-text-field>
            <v-date-picker v-model="form.fe_nacimiento" locale="es" 
            @input="dates.fe_nacimiento = formatDate( form.fe_nacimiento )"
            @change="save"
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

        <v-flex sm3 v-if="form.bo_discapacidad">
              <v-select
              :items="listas.tipoDiscapacidad"
              item-text="nb_tipo_discapacidad"
              item-value="id_tipo_discapacidad"
              v-model="form.id_tipo_discapacidad"
              label="Tipo de Discapacidad"
              :rules="rules.select"
              @change="getDiscapacidad"
              ></v-select>
        </v-flex>

        <v-flex sm3 v-if="form.bo_discapacidad && form.id_tipo_discapacidad && form.id_tipo_discapacidad != 4">
              <v-select
              :items="discapacidad"
              item-text="nb_discapacidad"
              item-value="id_discapacidad"
              v-model="form.id_discapacidad"
              label=" Indique Discapacidad"
              :rules="rules.select"
              :loading="discapacidadLoad"
              ></v-select>
        </v-flex>

        <v-flex sm3 v-if="form.bo_discapacidad && form.id_tipo_discapacidad && form.id_tipo_discapacidad == 4">
            <v-text-field
            label="Otros"
            hint="indique discapacidad"
            v-model="form.tx_discapacidad"
            :rules="rules.requerido"
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
    <pre>{{$data}}</pre>
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
            discapacidad:[],
            discapacidadLoad: false,
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
                misiones:         [],
                bo_discapacidad:  false,
                id_tipo_discapacidad: null,
                id_discapacidad:  null,
                tx_discapacidad:  null   
            },
            listas:{
                estadoCivil:      [],
                parentesco:       [],
                mision:           [],
                tipoDiscapacidad: []
            },
 
        }
    },
    watch:
    {
        item: function (val) {
                this.mapForm()
                this.mapDiscapacidad(this.item)
                this.mapMisiones(this.item)
        }

    },
    methods:
    {   
        save (date) 
        {
            this.$refs.picker.save(date)
        },
        mapMisiones(datos)
        {
            if(datos.persona_mision)
            {
                this.form.misiones =[]
                datos.persona_mision.forEach(element => {
                    this.form.misiones.push(element.id_mision)
                    
                }, this);
            }
        },
        mapDiscapacidad(datos)
        {
            if(datos.persona_discapacidad)
            {
                this.form.bo_discapacidad       = datos.persona_discapacidad.bo_discapacidad
                this.form.id_tipo_discapacidad  = datos.persona_discapacidad.id_tipo_discapacidad
                this.form.id_discapacidad       = datos.persona_discapacidad.id_discapacidad
                this.form.tx_discapacidad       = datos.persona_discapacidad.tx_discapacidad
                this.getDiscapacidad()
            }
        },
        getDiscapacidad()
        {
            if(this.form.id_tipo_discapacidad != 4)
            {
                axios.get('/api/v1/discapacidad/tipo/' + this.form.id_tipo_discapacidad)
                .then(respuesta => 
                {
                    this.discapacidad = respuesta.data;
                })
                .catch(error => 
                {
                    this.showError(error);
                })
            }
            else
            {
                this.form.id_discapacidad = 0
            }
                
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
            if (this.$refs.form.validate()) 
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
}
</script>

<style>

</style>

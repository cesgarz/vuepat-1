<template>
    <v-form ref="form" v-model="valido" lazy-validation>
    
    <v-toolbar dark class="primary"  dense>
        <h3>Datos Personales</h3>
    </v-toolbar>
    
    <v-card>
    <v-card-text>
    <v-layout wrap>

        <v-flex sm3>
            <v-text-field
            name="name"
            label="Cedula*"
            v-model="form.tx_cedula"
            :rules="rules.requerido"
            mask="A#########"
            hint="Ej V13479148"
            ></v-text-field>
        </v-flex>

        <v-flex xs12 sm3>
          <v-checkbox
            label="¿Posee Pasaporte?"
            v-model="form.bo_pasaporte"
          ></v-checkbox>
        </v-flex>

        <v-flex xs12 sm3>
          <v-text-field v-if="form.bo_pasaporte"
          label="Numero del Pasaporte*"
          mask="#########"
          v-model="form.nu_pasaporte"
          :rules="rules.requerido"
        ></v-text-field>
        </v-flex>

        <v-flex xs12 sm3>
            <v-menu v-if="form.bo_pasaporte"
                ref="pickerPasaporte"
                :close-on-content-click="false"
                v-model="picker.fe_pasaporte"
                full-width
                min-width="290px"
            >
                <v-text-field
                slot="activator"
                v-model="dates.fe_pasaporte"
                :rules="rules.fecha"
                label="Fecha de Vencimiento*"
                prepend-icon="event"
                readonly
                ></v-text-field>
                <v-date-picker 
                v-model="form.fe_pasaporte" 
                locale="es" 
                @input="dates.fe_pasaporte = formatDate( form.fe_pasaporte )"
                :max="new Date().toISOString().substr(0, 10)" 
                @change="savePasaporte"
                min="1950-01-01">
                </v-date-picker>
            </v-menu>
          </v-flex>


        <v-flex sm6>
         <v-text-field
          label="Nombres *"
          v-model="form.nb_apellido"
          :rules="rules.requerido"
        ></v-text-field>
        </v-flex>

        <v-flex sm6>
         <v-text-field
          label="Apellidos*"
          v-model="form.nb_nombre"
          :rules="rules.requerido"
        ></v-text-field>
        </v-flex>

        <v-flex sm2>
        <v-radio-group v-model="form.tx_sexo" row prepend-icon="wc" :rules="rules.radio" hint="Sexo*" persistent-hint>
            <v-radio label="M" value="M" ></v-radio>
            <v-radio label="F" value="F"></v-radio>
        </v-radio-group>
        </v-flex>

        <v-flex xs12 sm5>
            <v-menu
                ref="pickerNacimiento"
                :close-on-content-click="false"
                v-model="picker.fe_nacimiento"
                full-width
                min-width="290px"
            >
                <v-text-field
                slot="activator"
                v-model="dates.fe_nacimiento"
                :rules="rules.fecha"
                label="Fecha de Nacimiento*"
                prepend-icon="event"
                readonly
                ></v-text-field>
                <v-date-picker 
                v-model="form.fe_nacimiento" 
                locale="es" 
                @input="dates.fe_nacimiento = formatDate( form.fe_nacimiento )"
                :max="new Date().toISOString().substr(0, 10)" 
                @change="saveNacimiento"
                min="1950-01-01">
                </v-date-picker>
            </v-menu>
          </v-flex>

        <v-flex sm5>
            <v-select
            :items="listas.estadoCivil"
            item-text="nb_estado_civil"
            item-value="id_estado_civil"
            label="Estado Civil*"
            v-model="form.id_estado_civil"
            :rules="rules.select"
            ></v-select>
        </v-flex>

        <v-flex sm6>
         <v-text-field
          label="Telefono*"
          v-model="form.tx_telefono"
          :rules="rules.requerido"
          prepend-icon="phone"
          mask="+###-###-#########"
          hint="Ej +058-212-505-8930"
        ></v-text-field>
        </v-flex>

        <v-flex sm6>
         <v-text-field
          label="Celular"
          v-model="form.tx_celular"
          prepend-icon="phone_android"
          mask="+###-###-#########"
          hint="Ej +058-414-505-8930"
        ></v-text-field>
        </v-flex>

        <v-flex xs12 sm4>
          <v-checkbox
            label="¿Posee anguna Discapacidad?"
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
              :rules="rules.select"
              @change="getDiscapacidad"
              ></v-select>
        </v-flex>

        <v-flex sm4 v-if="form.bo_discapacidad && form.id_tipo_discapacidad && form.id_tipo_discapacidad != 4">
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

        <v-flex sm4 v-if="form.bo_discapacidad && form.id_tipo_discapacidad && form.id_tipo_discapacidad == 4">
            <v-text-field
            label="Otros"
            hint="indique discapacidad"
            v-model="form.tx_discapacidad"
            :rules="rules.requerido"
            ></v-text-field>
        </v-flex>

        <v-flex sm4>
            <v-checkbox
            label="¿Posee anguna Enfermedad?"
            v-model="form.bo_enfermedad"
            prepend-icon="local_hospital"
            ></v-checkbox>
        </v-flex>

        <v-flex sm4 v-if="form.bo_enfermedad">
            <v-text-field
            label="Enfermedad"
            hint="indique Enfermedad"
            v-model="form.tx_enfermedad"
            :rules="rules.requerido"
            ></v-text-field>
        </v-flex>

    </v-layout>
    </v-card-text>
    </v-card>

    <v-card-actions>
        <v-spacer></v-spacer>
        <registro-buttons 
        @update="update" 
        @store="store" 
        :btnAccion="btnAccion" 
        :valido="valido"
        :btnLoad="btnLoad"
        ></registro-buttons>     
    </v-card-actions>
    <!--<pre>{{$data}}</pre>-->

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
            discapacidad: [],
            discapacidadLoad: false,
            piker: {
                fe_pasaporte: null,
                fe_nacimiento: null,
            },
            dates: {
                fe_pasaporte: null,
                fe_nacimiento: null,
            },
            form: {
                    id_persona:         null,
                    nb_nombre:          null,
                    nb_apellido:        null,
                    tx_cedula:          null,
                    bo_pasaporte:       false,
                    nu_pasaporte:       null,
                    fe_pasaporte:       null,
                    id_ubicacion:       2,
                    tx_sexo:            null,
                    fe_nacimiento:      null,
                    id_estado_civil:    null,
                    id_parentesco:      99,
                    tx_telefono:        null,
                    tx_celular:         null,
                    bo_enfermedad:      false,
                    tx_enfermedad:      null,
                    tx_observaciones:   null,
                    id_status:          1,
                    id_usuario:         1,
                    bo_discapacidad:    false,
                    id_tipo_discapacidad: null,
                    id_discapacidad:    null,
                    tx_discapacidad:    null
            },
            listas:{
                estadoCivil:        [],
                tipoDiscapacidad:   [],
            },

        }
    },
    methods:
    {
        savePasaporte (date) 
        {
            this.$refs.pickerPasaporte.save(date)
        },
        saveNacimiento (date) 
        {
            this.$refs.pickerNacimiento.save(date)
        },
        getData()
        {
            this.btnLoad = true
            axios.get(this.basePath + this.$store.getters.user.id_usuario)
            .then(respuesta => 
            {
                this.btnLoad = false
                this.datos = respuesta.data;
                this.mapDiscapacidad(this.datos)
                if(this.datos)
                {
                    this.btnAccion = 'upd'
                    this.$emit('completado', true);
                }
            })
            .catch(error => 
            {
                this.showError(error);
            })
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
                this.discapacidadLoad = true
                this.btnLoad = true

                axios.get('/api/v1/discapacidad/tipo/' + this.form.id_tipo_discapacidad)
                .then(respuesta => 
                {
                    this.discapacidad = respuesta.data;
                    this.discapacidadLoad = false
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
            this.form.id_parentesco = 99
            this.form.id_status     = 1
            this.form.id_ubicacion  = 2
            this.form.bo_enfermedad = (this.form.bo_enfermedad === null) ? false : this.form.bo_enfermedad;
            this.form.id_usuario    = this.$store.getters.user.id_usuario

            if (this.$refs.form.validate()) 
            {  
                this.btnLoad = true
                axios.post(this.basePath, this.form)
                .then(respuesta => 
                {
                    this.form.id_persona = respuesta.data[0].persona.id_persona
                    this.showMessage(respuesta.data.msj)
                    this.btnAccion = 'upd'
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
                this.btnLoad = true
                axios.put(this.basePath + this.form.id_persona, this.form)
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
        }
    }
}
</script>

<style>

</style>

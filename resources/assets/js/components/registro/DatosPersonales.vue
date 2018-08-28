<template>
    <v-form ref="form" v-model="valido" lazy-validation>
    <v-card>
    <v-card-text>
    <v-layout wrap>

        <v-flex sm6>
         <v-text-field
          name="name"
          label="Cedula / Pasaporte"
          v-model="form.tx_cedula"
          required
          :rules="rules.requerido"
        ></v-text-field>
        </v-flex>
        <v-flex sm8>
        </v-flex>    
          
        <v-flex sm6>
         <v-text-field
          name="name"
          label="Apellidos"
          required
          v-model="form.nb_nombre"
          :rules="rules.requerido"
        ></v-text-field>
        </v-flex>

        <v-flex sm6>
         <v-text-field
          name="name"
          label="Nombres"
          required
          v-model="form.nb_apellido"
          :rules="rules.requerido"
        ></v-text-field>
        </v-flex>

        <v-flex sm2>
        <v-radio-group v-model="form.tx_sexo" row prepend-icon="wc">
            <v-radio label="M" value="M" ></v-radio>
            <v-radio label="F" value="F"></v-radio>
        </v-radio-group>
        </v-flex>

        <v-flex xs12 sm5>
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
                label="Fecha de Nacimiento"
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

        <v-flex sm5>
            <v-select
            :items="listas.estadoCivil"
            item-text="nb_estado_civil"
            item-value="id_estado_civil"
            label="Estado Civil"
            v-model="form.id_estado_civil"
            :rules="rules.select"
            required
            ></v-select>
        </v-flex>

        <v-flex sm6>
         <v-text-field
          name="name"
          label="Telefono"
          v-model="form.tx_telefono"
          :rules="rules.requerido"
          prepend-icon="phone"
        ></v-text-field>
        </v-flex>

        <v-flex sm6>
         <v-text-field
          name="name"
          label="Celular"
          v-model="form.tx_celular"
          prepend-icon="phone_android"
        ></v-text-field>
        </v-flex>

        <v-flex xs12 sm3>
          <v-checkbox
            label="Posee anguna Discapacidad?"
            v-model="discapacidad"
            prepend-icon="accessible"
          ></v-checkbox>
        </v-flex>

        <v-flex sm3 v-if="discapacidad">
              <v-select
              :items="listas.tipoDiscapacidad"
              item-text="nb_tipo_discapacidad"
              item-value="id_tipo_discapacidad"
              v-model="tipoDiscap"
              label="Tipo de Discapacidad"
              required
              ></v-select>
        </v-flex>

        <v-flex sm3 v-if="tipoDiscap == 'Físicas'">
              <v-select
              :items="['Miembros  superiores', 'Miembros  inferiores']"
              label="Discapacidad Fisica"
              required
              ></v-select>
        </v-flex>

        <v-flex sm3 v-if="tipoDiscap == 'Sensorial'">
              <v-select
              :items="['Auditiva', 'Visual']"
              label="Discapacidad Sensorial"
              required
              ></v-select>
        </v-flex>

        <v-flex sm3 v-if="tipoDiscap == 'Otros'">
         <v-text-field
          name="name"
          label="Otros"
          hint="indique discapacidad"
          id="id"
        ></v-text-field>
        </v-flex>

    </v-layout>
    </v-card-text>
    </v-card>
    <pre>{{validar}}</pre>
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
                    id_persona:         null,
                    nb_nombre:          null,
                    nb_apellido:        null,
                    tx_cedula:          null,
                    tx_sexo:            null,
                    fe_nacimiento:      null,
                    id_estado_civil:    null,
                    id_parentesco:      99,
                    tx_telefono:        null,
                    tx_celular:         null,
                    id_status:          1,
                    id_usuario:         1,
                    bo_discapacidad:    false,   
                    id_tipo_discapacidad: null,
                    id_discapacidad:    null,
                    tx_discapacidad:    null

            },
            listas:{
                estadoCivil:        [],
                tipoDiscapacidad:   []
            },

        }
    },
    watch:
    {
        discapacidad(val)
        {
            if(!val){
                
                this.tipoDiscap = null
            }
        },
        picker (val) {
            
            val && this.$nextTick(() => (this.$refs.picker.activePicker = 'YEAR'))
        },
    },
    methods:
    {
        getData()
        {
            axios.get(this.basePath + this.$store.getters.user.id_usuario)
            .then(respuesta => 
            {
                this.datos = respuesta.data;
                if(this.datos)
                {
                    console.log('complete')
                    this.$emit('completado', true);
                }
            })
            .catch(error => 
            {
                this.showError(error);
            })
        },
        store()
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
        },
        update()
        {
            axios.put(this.basePath + this.form.id_persona, this.form)
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
</script>

<style>

</style>

<template>
    <v-form ref="form" v-model="valido" lazy-validation>
    <v-card>
    <v-card-text>
    <v-layout row wrap>
        
        <v-flex sm12>
            <v-text-field
            v-model="form.tx_empresa"
            :rules="rules.requerido"
            label="Empresa/Local*"
            hint="Nombre o razon social de la empresa/local"
            ></v-text-field>
        </v-flex>

        <v-flex sm12>
            <v-text-field
            v-model="form.tx_cargo"
            :rules="rules.requerido"
            label="Cargo*"
            hint="Cargo que desempeño"
            ></v-text-field>
        </v-flex>

        <v-flex sm4>
            <v-text-field
            v-model="form.nu_tiempo"
            :rules="rules.requerido"
            type="number"
            inverted
            label="Tiempo en la empresa*"
            hint="Tiempo Laborado en la empresa"
            prepend-icon="calendar_today"
            ></v-text-field>
        </v-flex>

         <v-flex sm3>
            <v-select
            :items="periodo"
            item-text="nb_periodo"
            item-value="id_periodo"
            v-model="form.id_periodo"
            :rules="rules.select"
            ></v-select>
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
        :valido="valido"
        :btnLoad="btnLoad"
        ></form-buttons>
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
            tabla: 'personaEmpleo',
            form: {
                id_persona_empleo:  null,
                id_persona:         null,
                tx_empresa:         null,
                tx_cargo:           null,
                nu_tiempo:          null,
                id_periodo:         null,
                tx_observaciones:   null,
                id_status:          1,
                id_usuario:         null,  
            },
            periodo: [{id_periodo: 1, nb_periodo: 'Semanas'},{id_periodo: 2, nb_periodo: 'Meses'},{id_periodo: 3, nb_periodo: 'Años'}]
        }
    },
    methods:
    {
        getData()
        {
        },
        store()
        {
            this.form.id_status  = 1;
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
            axios.put(this.basePath + this.form.id_persona_empleo, this.form)
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

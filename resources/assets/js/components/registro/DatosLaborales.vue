<template>
    <div>
    <v-card>
    <v-card-text>        
    <v-form ref="form" v-model="valido" lazy-validation>

        <v-flex sm4>
            <v-select
            :items="listas.nivelEstudio"
            label="Nivel de Estudio"
            item-text="nb_nivel_estudio"
            item-value="id_nivel_estudio"
            v-model="form.id_nivel_estudio"
            :rules="rules.select"
            prepend-icon="school"
            required
            ></v-select>
        </v-flex>
        <v-flex sm8>
        </v-flex>

        <v-flex sm8>
        <v-text-field
            name="name"
            label="Empresa/local Donde Trabaja"
            hint="Nombre o Razon Social de la Empresa/local"
            v-model="form.tx_empresa"
            prepend-icon="business"
            id="id"
        ></v-text-field>
        </v-flex>

        <v-flex sm4>
            <v-select
            :items="listas.sector"
            label="Sector"
            item-text="nb_sector"
            item-value="id_sector"
            v-model="form.id_sector"
            :rules="rules.select"
            hint="Sector en el que se desempeña"
            required
            ></v-select>
        </v-flex>

        <v-flex sm4>
            <v-select
            :items="listas.tipoCargo"
            label="Tipo de Cargo"
            item-text="nb_tipo_cargo"
            item-value="id_tipo_cargo"
            v-model="form.id_tipo_cargo"
            :rules="rules.select"
            required
            prepend-icon="work_outline"
            ></v-select>
        </v-flex>

        <v-flex sm8>
        <v-text-field  v-if="form.id_tipo_cargo"
            label="Cargo"
            v-model="form.tx_cargo"
            :rules="rules.requerido"
            required
        ></v-text-field>
        </v-flex>

        <v-flex sm3>
            <v-select
            :items="listas.jornada"
            item-text="nb_jornada"
            item-value="id_jornada"
            v-model="form.id_jornada"
            :rules="rules.select"
            label="Jornada de trabajo"
            hint="Indique las horas de trabajo al dia"
            prepend-icon="timer"
            required
            ></v-select>
        </v-flex>

        <v-flex sm3>
            <v-select  v-if="form.id_jornada"
            :items="listas.remuneracion"
            label="Remuneracion"
            item-text="nb_remuneracion"
            item-value="id_remuneracion"
            v-model="form.id_remuneracion"
            :rules="rules.select"
            prepend-icon="attach_money"
            required
            ></v-select>
        </v-flex>

        <v-flex sm3>
            <v-select v-if="form.id_remuneracion"
            :items="listas.moneda"
            item-text="nb_moneda"
            item-value="id_moneda"
            v-model="form.id_moneda"
            label="Moneda"
            required
            ></v-select>
        </v-flex>

        <v-flex sm3>
        <v-text-field v-show="form.id_remuneracion"
            label="Monto"
            v-model="form.mo_remuneracion"
        ></v-text-field>
        </v-flex>

        <v-flex xs12 sm3>
          <v-checkbox
            label="Empresa/Negocio Propio?"
            v-model="form.bo_empresa_propia"
            prepend-icon="shop"
          ></v-checkbox>
        </v-flex>

        <v-flex sm9 v-if="form.bo_empresa_propia">
        <v-text-field 
            label="Negocio o Empresa"
            v-model="form.nb_empresa_propia"
            :rules="rules.requerido"
            required
        ></v-text-field>
        </v-flex>

        <v-flex sm12 >
        <v-textarea 
            label="Perspectiva Laboral"
            hint="¿En que area laboral desearia ser incluido?"
            v-model="form.tx_observaciones"
            box
        ></v-textarea>
        </v-flex>
    
    </v-form>

    </v-card-text>
    </v-card>
    <v-card>
        <v-card-text>
            <empleo-lista></empleo-lista>
        </v-card-text>
    </v-card>
    <pre>{{'$data'}}</pre>
    </div>
</template>

<script>
import formHelper   from '../../components/mixins/formHelper';
import withSnackbar from '../../components/mixins/withSnackbar';

import EmpleoLista from '../../components/registro/EmpleoLista.vue'

export default {
    name: 'datos-situacionales',
    mixins: [ formHelper, withSnackbar ],
    components: {
    'empleo-lista':     EmpleoLista,
    },
    data() 
    {
        return {
            picker: 0,
            checkbox: false,
            value: 0,
            form: {
                id_empleo:          null,
                id_persona:         null,
                tx_empresa:         null,
                id_sector:          null,
                id_tipo_cargo:      null,
                tx_cargo:           null,
                id_jornada:         null,
                id_remuneracion:    null,
                id_moneda:          null,
                mo_remuneracion:    null,
                bo_empresa_propia:  false,
                nb_empresa_propia:  null,
                tx_observaciones:   null,
                id_status:          null,
                id_usuario:         null,
                id_nivel_estudio:   null,
            },
            listaEmpleos:   [],
            listas:{
                nivelEstudio: [],
                sector:       [],
                tipoCargo:    [],
                jornada:      [],
                remuneracion: [],
                moneda:       []
            },
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

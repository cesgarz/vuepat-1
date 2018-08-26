<template>
    <v-card>
    <v-card-text>
    <v-layout wrap>

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
            label="Empresa Donde Trabaja"
            hint="Nombre o Razon Social de la Empresa"
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
        <v-text-field  v-show="form.id_tipo_cargo"
            label="Cargo"
            v-model="form.tx_cargo"
            
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
            <v-select  v-show="form.id_jornada"
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
            <v-select v-show="form.id_remuneracion"
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
            name="name"
            label="Monto"
            id="id"
        ></v-text-field>
        </v-flex>

        <v-flex xs12 sm3>
          <v-checkbox
            label="Empresa/Negocio Propio?"
            v-model="form.bo_negocio_propio"
            prepend-icon="shop"
          ></v-checkbox>
        </v-flex>

        <v-flex sm9 v-show="form.bo_negocio_propio">
        <v-text-field 
            name="name"
            label="Negocio o Empresa"
            id="id"
        ></v-text-field>
        </v-flex>


        <v-flex sm12>
        <v-subheader dark class="primary"><v-icon>work</v-icon> Empleos en Venezuela (Ultimos 2)</v-subheader>
        </v-flex>

        <v-flex sm4>
        <v-text-field
            name="name"
            label="Empresa"
            id="id"
            prepend-icon="business"
        ></v-text-field>
        </v-flex>

         <v-flex sm4>
        <v-text-field
            name="name"
            label="Cargo"
            id="id"
        ></v-text-field>
        </v-flex>

        <v-flex sm4>
        <v-text-field
            name="name"
            label="Tiempo en la Empresa"
            id="id"
        ></v-text-field>
        </v-flex>

        <v-flex sm4>
        <v-text-field
            name="name"
            label="Empresa"
            id="id"
            prepend-icon="business"
        ></v-text-field>
        </v-flex>

         <v-flex sm4>
        <v-text-field
            name="name"
            label="Cargo"
            id="id"
        ></v-text-field>
        </v-flex>

        <v-flex sm4>
        <v-text-field
            name="name"
            label="Tiempo en la Empresa"
            id="id"
        ></v-text-field>
        </v-flex>


<pre>{{'$data'}}</pre>

    </v-layout>
    </v-card-text>
    </v-card>
</template>

<script>
import formHelper   from '../../components/mixins/formHelper';
import withSnackbar from '../../components/mixins/withSnackbar';
export default {
    name: 'datos-situacionales',
    mixins: [ formHelper, withSnackbar ],
    data() 
    {
        return {
            picker: 0,
            checkbox: false,
            value: 0,
            form: {
                id_empleo:          false,
                id_persona:         false,
                tx_empresa:         false,
                id_sector:          false,
                id_tipo_cargo:      false,
                tx_cargo:           false,
                id_jornada:         false,
                id_remuneracion:    false,
                id_moneda:          false,
                mo_remuneracion:    false,
                bo_empresa_propia:  false,
                nb_empresa_propia:  false,
                tx_observaciones:   false,
                id_status:          false,
                id_usuario:         false,
                id_nivel_estudio:   false,
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
            row: 0, 
            rules:{

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

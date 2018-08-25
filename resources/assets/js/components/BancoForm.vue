<template>
    <v-container fluid grid-list-md text-xs-center>
    <v-layout row justify-center>
    <v-flex xs12>
        <v-form ref="form" v-model="valido" lazy-validation>
        <v-card>
            
        <v-card-title class="light-blue darken-3 white--text">
            <h2>Banco</h2>
        </v-card-title>
        
        <v-card-text>
        <v-layout wrap>
        
            <v-flex xs12 >
            <v-text-field
                v-model="form.nb_banco"
                :rules="rules.nb_banco"
                label="Nombre del Banco"
                placeholder="Indique Nombre"
                required
            ></v-text-field>
            </v-flex>

            <v-flex xs12 sm6>
                <v-select
                :items="listas.tipoBanco"
                item-text="nb_tipo_banco"
                item-value="id_tipo_banco"
                v-model="form.id_tipo_banco"
                :rules="rules.select"
                label="Tipo Banco"
                autocomplete
                required
                ></v-select>
            </v-flex>

            <v-flex xs12 sm6>
                <v-select
                :items="listas.grupoBanco"
                item-text="nb_grupo_banco"
                item-value="id_grupo_banco"
                v-model="form.id_grupo_banco"
                :rules="rules.select"
                label="Grupo Banco"
                autocomplete
                required
                ></v-select>
            </v-flex>

            <v-flex xs12>  
                <v-select
                :items="listas.status"
                item-text="nb_status"
                item-value="id_status"
                v-model="form.id_status"
                :rules="rules.select"
                label="Status del Banco"
                autocomplete
                required
                ></v-select>
            </v-flex>

            <v-flex xs12 >
                <v-text-field
                    v-model="form.tx_observaciones"
                    label="Observaciones"
                    placeholder="Indique Observaciones"
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
                    :valido="valido"
                ></form-buttons>   

            </v-card-actions>
                                
        </v-card>
        </v-form>
    </v-flex>
    </v-layout>
    </v-container>
    
</template>

<script>

import withSnackbar from '../components/mixins/withSnackbar';
import formHelper from '../components/mixins/formHelper';

export default {
    mixins: [ formHelper, withSnackbar ],
    data () {
        return {
            tabla: 'banco',
            form:{
                id_banco: '',
                nb_banco: '',
                id_tipo_banco: '',
                id_grupo_banco: '',
                id_status: '',
                tx_observaciones: '',
                id_usuario:''
            },
            listas:{
                tipoBanco:  [],
                grupoBanco: [],
                status:     ['/grupo/5']
            },
            
        }
    },
    methods:{
        
        update()
        {
            if (this.$refs.form.validate()) 
            {           
                axios.put(this.basePath + this.form.id_banco, this.form)
                .then(respuesta => {
                    this.showMessage(respuesta.data.msj)
                    this.cancel();
                })
                .catch(error => {
                    this.showError(error);
                    
                })
            }
        },
        store()
        {
            if (this.$refs.form.validate()) 
            {
                axios.post(this.basePath, this.form)
                .then(respuesta => {
                    this.showMessage(respuesta.data.msj)
                    this.$emit('cerrarModal');
                })
                .catch(error => {
                    this.showError(error);
                })
            }
        }
    }
    
}

</script>

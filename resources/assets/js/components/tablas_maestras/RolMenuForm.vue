<template>
    <v-container fluid grid-list-md text-xs-center>
    <v-layout row justify-center>
    <v-flex xs12>
        <v-form ref="form" v-model="valido" lazy-validation>
        <v-card>
            
        <v-card-title class="light-blue darken-3 white--text">
            <h2>Rol Menu</h2>
        </v-card-title>
        
        <v-card-text>
        <v-layout wrap>
        
            <v-flex xs12 sm6>
                <v-select
                :items="listas.roles"
                item-text="nb_rol"
                item-value="id_rol"
                v-model="form.id_rol"
                :rules="rules.select"
                label="Rol"
                autocomplete
                required
                ></v-select>
            </v-flex>

            <v-flex xs12 sm6>
                <v-select
                :items="listas.menus"
                item-text="nb_menu"
                item-value="id_menu"
                v-model="form.id_menu"
                :rules="rules.select"
                label="Menu"
                autocomplete
                required
                ></v-select>
            </v-flex>

            <v-flex xs12>  
                <v-select
                :items="listas.ordenMenus"
                item-text="orden"
                item-value="orden"
                v-model="form.orden"
                :rules="rules.select"
                label="Prioridad del Menu"
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

import withSnackbar from '../mixins/withSnackbar';
import formHelper from '../mixins/formHelper';

export default {
    mixins: [ formHelper, withSnackbar ],
    data () {
        return {
            tabla: 'rol_menu',
            form:{
                id_rol_menu:      '',
                id_rol:           '',
                id_menu:          '',
                orden:            '',
                id_status:        '',
                tx_observaciones: '',
                id_usuario:       ''
            },
            listas:{
                roles: ['/roles'],
                menus:  ['/menus'],
                ordenMenus: ['/ordenMenus']
                status:     ['/grupo/5']
            },
            
        }
    },
    methods:{
        
        update()
        {
            if (this.$refs.form.validate()) 
            {           
                axios.put(this.basePath + this.form.id_rol_menu, this.form)
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
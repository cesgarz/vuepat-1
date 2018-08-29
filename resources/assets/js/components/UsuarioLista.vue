<template>
    <v-container fluid grid-list-md text-xs-center>
        <v-layout row justify-center>
        <v-flex xs12>
        <v-card>
            
            <v-toolbar class="light-blue darken-3 white--text">
            <h3>Usuario</h3>
                <v-spacer></v-spacer>
                <v-btn fab @click="insItem" dark small absolute right bottom class="success">
                    <v-icon dark>add</v-icon>
                </v-btn>
            </v-toolbar>

            <v-card-text>
                
            <v-flex xs12 xs6>
            <v-text-field
                v-model="buscar"
                append-icon="search"
                label="Buscar"
                single-line
                hide-details
                clearable
            ></v-text-field>
            </v-flex>
            
            <v-data-table
            :headers="headers"
            :items  ="items"
            :search ="buscar"
            v-model ="selected"
            item-key="id_usuario"
            rows-per-page-text="Res. x Pag"
            >

            <template slot="items" slot-scope="item">
                
                <td class="text-xs-left">{{ item.item.nb_usuario }}</td>
                <td class="text-xs-left">{{ item.item.tx_email }}</td>
                <td class="text-xs-left">{{ item.item.status.nb_status }}</td>
                <!--acciones-->
                <td class="text-xs-left">
                    <list-buttons @editar="updItem(item.item)" :del="false">
                        <v-tooltip top>
                        <v-btn slot="activator" fab dark small color="error" @click="editPasw(item.item)">
                            <v-icon>lock</v-icon>
                        </v-btn>
                        <span>Cambio de Password</span>
                        </v-tooltip>
                    </list-buttons>
                </td>

            </template>

            <v-alert slot="no-results" :value="true" color="info" icon="info">
                La busqueda "{{ buscar }}" Sin resultados
            </v-alert>

            <template slot="pageText" slot-scope="item">
                {{item.pageStart}} - {{item.pageStop}} de {{item.itemsLength}}
            </template>

            </v-data-table>
            </v-card-text>

        </v-card>
        </v-flex>
        </v-layout>
    
        <form-container :nb-accion="nb_accion" :modal="modal" @cerrarModal="cerrarModal">
            <usuario-form :accion="accion" :item="item" @cerrarModal="cerrarModal"></usuario-form>
        </form-container>

        <form-container :nb-accion="nb_accion" :modal="modalPasw" @cerrarModal="cerrarModalPasw">
            <usuario-password :accion="accion" :item="item" @cerrarModal="cerrarModalPasw"></usuario-password>
        </form-container>


        <dialogo 
            :dialogo="dialogo" 
            :mensaje="'Desea Eliminar el Usuario: ' + item.nb_usuario "
            @delItem="delItem"
            @delCancel="delCancel"
        >
        </dialogo>
        
    </v-container>

</template>

<script>

import withSnackbar from '../components/mixins/withSnackbar';
import listHelper from '../components/mixins/listHelper';

export default {
    mixins:[ listHelper, withSnackbar ],
    data () {
    return {
        modalPasw : false,
        headers: [
        { text: 'Usuario',  value: 'nb_usuario' },
        { text: 'Correo',   value: 'tx_email' },
        { text: 'Status',   value: 'status.nb_status'  },
        { text: 'Acciones', value: 'id_status'  },
        ]
    }
    },
    methods:
    {
        list () {

            axios.get('/api/v1/usuario/lista')
            .then(respuesta => {
                this.items = respuesta.data;
            })
            .catch(error => {
                this.showError(error)
            })
        },
        delItem(){
            axios.delete('/api/v1/usuario/'+this.item.id_usuario)
            .then(respuesta => {

                this.showMessage(respuesta.data.msj)
                this.list();
                this.item = '';
                this.dialogo = false;
                
            })
            .catch(error => {
                this.showError(error)    
            })

        },
        editPasw(item)
        {
            this.accion = 'upd';
            this.item = item;
            this.modalPasw = true;
        },
        cerrarModalPasw()
        {
            this.modalPasw = false;
        }
    }
}

</script>

<style>

</style>

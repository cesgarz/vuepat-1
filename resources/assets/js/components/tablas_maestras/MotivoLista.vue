<template>
    <v-container fluid grid-list-md text-xs-center>
        <v-layout row justify-center>
        <v-flex xs12>
        <v-card>
            
            <v-toolbar class="light-blue darken-3 white--text">
            <h3>Motivos de Viaje</h3>
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
            item-key="id_motivo"
            :loading="IsLoading"
            rows-per-page-text="Res. x Pag"
            disable-initial-sort
            >

            <template slot="items" slot-scope="item">
                
                <td class="text-xs-left">{{ item.item.nb_motivo }}</td>
                <td class="text-xs-center"> 
                    {{ item.item.status.nb_status }}
                     <!-- status
                    <v-switch 
                    v-model="item.item.id_status">
                    </v-switch> 
                    -->
                </td>
                <!--acciones-->
                <td class="text-xs-left">
                    <list-buttons @editar="updItem(item.item)" :del="false">
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
            <motivo-form :accion="accion" :item="item" @cerrarModal="cerrarModal"></motivo-form>
        </form-container>

        <dialogo 
            :dialogo="dialogo" 
            :mensaje="'Desea Eliminar el Motivo: ' + item.nb_motivo "
            @delItem="delItem"
            @delCancel="delCancel"
        >
        </dialogo>
        
    </v-container>

</template>

<script>

import withSnackbar from '../mixins/withSnackbar';
import listHelper from '../mixins/listHelper';

export default {
    mixins:[ listHelper, withSnackbar ],
    data () {
    return {
        headers: [
        { text: 'Nombre',   value: 'nb_motivo' },
        { text: 'Status',   value: 'id_status'  },
        { text: 'Acciones', value: 'id_status'  },
        ]
    }
    },
    methods:
    {
        list () {

            axios.get('/api/v1/motivo/lista')
            .then(respuesta => {
                this.items = respuesta.data;
                this.IsLoading = false
            })
            .catch(error => {
                this.showError(error)
                this.IsLoading = false
            })
        },
        delItem(){
            axios.delete('/api/v1/motivo/'+this.item.id_motivo)
            .then(respuesta => {

                this.showMessage(respuesta.data.msj)
                this.list();
                this.item = '';
                this.dialogo = false;
                
            })
            .catch(error => {
                this.showError(error)    
            })

        }
    }
}

</script>

<style>

</style>
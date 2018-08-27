<template>
    <div>

        <v-flex xs12>
            <v-subheader dark class="primary"><v-icon>work</v-icon> Empleos en Venezuela (Ultimos 2)
            <v-spacer></v-spacer>
            <v-btn fab @click="insItem" dark absolute right class="success" v-show="cantEmpleos < 2">
                <v-icon dark>playlist_add</v-icon>
            </v-btn>
            </v-subheader>
        </v-flex>
        
        <v-data-table
        :headers="headers"
        :items  ="items"
        :search ="buscar"
        item-key="id_banco"
        :loading="IsLoading"
        rows-per-page-text="Res. x Pag"
        disable-initial-sort
        hide-actions
        no-data-text="No se han cargados Empleos. Dar clip en el boton para agregar"

        >

        <template slot="items" slot-scope="item">
            <td class="text-xs-left">{{ item.item.tx_empresa    }}</td>
            <td class="text-xs-left">{{ item.item.tx_cargo  }}</td>
            <td class="text-xs-left">{{ item.item.nu_tiempo +' ' + getPeriodo(item.item.id_periodo)   }}</td>

            <!--acciones-->
            <td class="text-xs-left">
                <list-buttons  @editar="updItem(item.item)" @eliminar="delForm(item.item)">
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

        <form-container :nb-accion="nb_accion" :modal="modal" @cerrarModal="cerrarModal">
            <empleo-form :accion="accion" :item="item" @cerrarModal="cerrarModal"></empleo-form>
        </form-container>

        <dialogo 
        :dialogo="dialogo" 
        :mensaje="'¿Desea Eliminar el Empleo? ' "
        @delItem="delItem"
        @delCancel="delCancel"
        >
        </dialogo>

    </div>
</template>

<script>
import listHelper from '../../components/mixins/listHelper';
import withSnackbar from '../../components/mixins/withSnackbar';
import EmpleoForm from '../../components/registro/EmpleoForm.vue'

export default {
    mixins:[ listHelper, withSnackbar ],
    name: 'empleo-lista',
    components: {
    'empleo-form':     EmpleoForm,
    },
    data() 
    {
        return {
            tabla: 'empleo',
            headers: [
            { text: 'Empresa'   ,value: 'tx_empresa' },
            { text: 'Cargo'     ,value: 'tx_cargo' },
            { text: 'Tiempo en la Empresa'    ,value: 'nu_tiempo' },
            { text: 'Acciones'  ,value: 'id_status'  },
            ],
            periodo: [{id_periodo: 1, nb_periodo: 'Semanas'},{id_periodo: 2, nb_periodo: 'Meses'},{id_periodo: 3, nb_periodo: 'Años'}]
        }
    },
    computed:
    {
        cantEmpleos()
        {
           if(this.items)
           {
               return this.items.length;
           }
           else
           {
               return 0;
           }
           
        }
    },
    methods:
    {
        
        getPeriodo(id_periodo)
        {
                let periodo = '';

                this.periodo.forEach(function(item) {
                   
                   if(item.id_periodo == id_periodo)
                   {
                       periodo = item.nb_periodo
                   }

                });

                return periodo;
        },
        list () {
                        
            axios.get(this.basePath +'personaEmpleo/usuario/' + this.$store.getters.user.id_usuario)
            .then(respuesta => 
            {
                this.items = respuesta.data;
                this.IsLoading = false;
            })
            .catch(error => 
            {
                this.showError(error);
            })
        },
        delItem(){

            axios.delete(this.basePath +'personaEmpleo/'+this.item.id_persona_empleo)
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

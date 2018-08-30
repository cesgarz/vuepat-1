<template>
    <v-card>
    <v-card-text>
    <v-layout row wrap>


        <v-toolbar dark class="primary">
            <h3>Familiares</h3>
                <v-spacer></v-spacer>
         
                    <v-btn  fab @click="insItem" dark absolute right bottom class="success">
                        <v-icon dark>group_add</v-icon>
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
            item-key="id_banco"
            :loading="IsLoading"
            rows-per-page-text="Res. x Pag"
            disable-initial-sort
            >

            <template slot="items" slot-scope="item">
                <td class="text-xs-left">{{ item.item.nb_nombre    }}</td>
                <td class="text-xs-left">{{ item.item.nb_apellido  }}</td>
                <td class="text-xs-left">{{ item.item.tx_cedula     }}</td>
                <td class="text-xs-left">{{ item.item.parentesco.nb_parentesco }}</td>
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
                <form-familiares :accion="accion" :item="item" @cerrarModal="cerrarModal"></form-familiares> 
            </form-container>

            <dialogo 
            :dialogo="dialogo" 
            :mensaje="'¿Desea Eliminar el Familiar? ' "
            @delItem="delItem"
            @delCancel="delCancel"
            >
            </dialogo>

    </v-card-text>

    </v-layout>
    </v-card-text>
    </v-card>
</template>

<script>
import listHelper from '../../components/mixins/listHelper';
import withSnackbar from '../../components/mixins/withSnackbar';
import FormContainer from '../../components/registro/FormContainer.vue'
import FormFamiliares from '../../components/registro/FormFamiliares.vue'

export default {
    mixins:[ listHelper, withSnackbar ],
    components: {
    'form-container':       FormContainer,
    'form-familiares':      FormFamiliares,
    },
    name: 'datos-personales',
    data() 
    {
        return {
            tabla: 'persona',
            headers: [
            { text: 'Nombres'   ,value: 'nb_nombre' },
            { text: 'Apellidos' ,value: 'nb_apellido' },
            { text: 'Cedula'    ,value: 'tx_cedula' },
            { text: 'Parentesco',value: 'parentesco.nb_parentesco'  },
            { text: 'Acciones'  ,value: 'id_status'  },
            ]
        }
    },
    methods:
    {
        list () {
                        
            axios.get(this.basePath +'persona/familiar/' + this.$store.getters.user.id_usuario)
            .then(respuesta => 
            {
                this.items = respuesta.data;
                this.IsLoading = false;
                if(this.items.length > 0 ){   this.$emit('completado', true) }
            })
            .catch(error => 
            {
                this.showError(error);
                this.$emit('completado', false) 
            })
        },
        delItem(){

            axios.delete(this.basePath +'persona/'+this.item.id_persona)
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

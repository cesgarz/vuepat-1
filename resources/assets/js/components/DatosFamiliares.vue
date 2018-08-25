<template>
    <v-card>
    <v-card-text>
    <v-layout row wrap>


        <v-toolbar dark class="primary">
            <h3>Familiares</h3>
                <v-spacer></v-spacer>
                <v-btn fab @click="insItem" dark absolute right bottom class="success">
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
                <td class="text-xs-left">{{ item.item.nombres    }}</td>
                <td class="text-xs-left">{{ item.item.apellidos  }}</td>
                <td class="text-xs-left">{{ item.item.cedula     }}</td>
                <td class="text-xs-left">{{ item.item.parentesco }}</td>

            </template>

            <v-alert slot="no-results" :value="true" color="info" icon="info">
                La busqueda "{{ buscar }}" Sin resultados
            </v-alert>

            <template slot="pageText" slot-scope="item">
                {{item.pageStart}} - {{item.pageStop}} de {{item.itemsLength}}
            </template>

            </v-data-table>


            <form-container :nb-accion="nb_accion" :modal="modal" @cerrarModal="cerrarModal">
                <form-familiares></form-familiares> 
            </form-container>
</v-card-text>
      

    </v-layout>
    </v-card-text>
    </v-card>
</template>

<script>
import listHelper from '../../components/mixins/listHelper';
import FormContainer from '../../components/registro/FormContainer.vue'
import FormFamiliares from '../../components/registro/FormFamiliares.vue'

export default {
    mixins:[listHelper],
    components: {
    'form-container':       FormContainer,
    'form-familiares':      FormFamiliares,
    },
    created()
    {
      this.list();
    },
    name: 'datos-personales',
    data() 
    {
        return {
            buscar: null,

            IsLoading: false,
            items: [],
            headers: [
            { text: 'Nombre',    value: 'nombres' },
            { text: 'apellidos', value: 'apellidos' },
            { text: 'Cedula',    value: 'cedula' },
            { text: 'Parentesco',value: 'parentesco'  },
            ]
        }
    },
    methods:
    {
        list () {
            this.items = [  
                            {nombres: 'Luisa', apellidos: 'Tovar', cedula:'16087829', parentesco:'esposa'  },
                            {nombres: 'Jean',  apellidos: 'Pierre', cedula:'31297122', parentesco:'hijo'  }
                        ];



        },




    }
}
</script>

<style>

</style>

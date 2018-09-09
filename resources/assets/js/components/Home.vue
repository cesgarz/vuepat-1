<style scoped>
  .separador {
    height:50px;
  }
</style>

<template>
  <v-layout row justify-center wrap>
    <v-flex xs12 sm6 md3>
      <v-card>
        <v-flex flat xs12>
          <v-card dark color="blue">
            <v-card-text class="text-xs-center">
              <v-icon x-large>person</v-icon>
            </v-card-text>
          </v-card>
        </v-flex>
        <v-flex flat xs12>
          <v-card color="">
            <v-card-text>
              <v-list-tile>
                <v-list-tile-content class="blue--text">
                  <v-list-tile-title>Usuario Registrados</v-list-tile-title>
                  <v-list-tile-sub-title><h3>{{ registrados }}</h3></v-list-tile-sub-title>
                </v-list-tile-content>
              </v-list-tile>
            </v-card-text>
          </v-card>
        </v-flex>
      </v-card>
    </v-flex>
    <v-flex xs12 sm6 md3>
      <v-card>
        <v-flex flat xs12>
          <v-card dark color="red">
            <v-card-text class="text-xs-center">
              <v-icon x-large>language</v-icon>
            </v-card-text>
          </v-card>
        </v-flex>
        <v-flex flat xs12>
          <v-card color="">
            <v-card-text>
              <v-list-tile>
                <v-list-tile-content class="red--text">
                  <v-list-tile-title>Paises Registrados</v-list-tile-title>
                  <v-list-tile-sub-title><h3>{{ paises }}</h3></v-list-tile-sub-title>
                </v-list-tile-content>
              </v-list-tile>
            </v-card-text>
          </v-card>
        </v-flex>
      </v-card>
    </v-flex>
    <v-flex xs12 sm6 md3>
      <v-card>
        <v-flex flat xs12>
          <v-card dark color="green">
            <v-card-text class="text-xs-center">
              <v-icon x-large>accessible</v-icon>
            </v-card-text>
          </v-card>
        </v-flex>
        <v-flex flat xs12>
          <v-card color="">
            <v-card-text>
              <v-list-tile>
                <v-list-tile-content class="green--text">
                  <v-list-tile-title>Discapacitados</v-list-tile-title>
                  <v-list-tile-sub-title><h3>{{ discapacitados }}</h3></v-list-tile-sub-title>
                </v-list-tile-content>
              </v-list-tile>
            </v-card-text>
          </v-card>
        </v-flex>
      </v-card>
    </v-flex>
    <v-flex xs12 sm6 md3>
      <v-card>
        <v-flex flat xs12>
          <v-card dark color="orange">
            <v-card-text class="text-xs-center">
              <v-icon x-large>supervisor_account</v-icon>
            </v-card-text>
          </v-card>
        </v-flex>
        <v-flex flat xs12>
          <v-card color="">
            <v-card-text>
              <v-list-tile>
                <v-list-tile-content class="orange--text">
                  <v-list-tile-title>Familiares Registrados</v-list-tile-title>
                  <v-list-tile-sub-title><h3>{{ familiares }}</h3></v-list-tile-sub-title>
                </v-list-tile-content>
              </v-list-tile>
            </v-card-text>
          </v-card>
        </v-flex>
      </v-card>
    </v-flex>
    <v-flex xs12 class="separador"></v-flex>
    <v-flex xs12 md6>
      <v-card>
        <v-flex flat xs12>
          <v-card  >
            <v-card-text class="text-xs-center">
              <line-chart :data="chartUsuarios.data"  :download="true"></line-chart>
            </v-card-text>
          </v-card>
        </v-flex>
        <v-flex flat xs12>
          <v-card color="">
            <v-card-text>
              <v-list-tile>
                <v-list-tile-content>
                  <v-list-tile-title><h3>Usuario</h3></v-list-tile-title>
                  <v-list-tile-sub-title>Cantidad X Dia</v-list-tile-sub-title>
                </v-list-tile-content>
              </v-list-tile>
            </v-card-text>
          </v-card>
        </v-flex>
      </v-card>
    </v-flex>
    <v-flex xs12 md6>
      <v-card>
        <v-flex flat xs12>
          <v-card >
            <v-card-text class="text-xs-center">
              <pie-chart :data="chartSexo.data" :colors="chartSexo.colors" :download="true"></pie-chart>
            </v-card-text>
          </v-card>
        </v-flex>
        <v-flex flat xs12>
          <v-card color="">
            <v-card-text>
              <v-list-tile>
                <v-list-tile-content>
                  <v-list-tile-title><h3>Hombres vs Mujeres</h3></v-list-tile-title>
                  <v-list-tile-sub-title>Registrados segun su Sexo</v-list-tile-sub-title>
                </v-list-tile-content>
              </v-list-tile>
            </v-card-text>
          </v-card>
        </v-flex>
      </v-card>
    </v-flex>
    <v-flex xs12 class="separador"></v-flex>

  </v-layout>
  
</template>

<script>

import withSnackbar from '../components/mixins/withSnackbar';
import VueChartkick from 'vue-chartkick';
import Chart from 'chart.js';

Vue.use(VueChartkick, {adapter: Chart})

export default {
    mixins: [ withSnackbar ],
    data () {
      return {
         
        registrados:    0,  
        paises:         0,
        discapacitados: 0,
        familiares:     0,
        usuarios:       [],
        sexo:           [],
        chartUsuarios:      {
          data: [],
          colors: ['#666', '#b00']
        },
        chartSexo:      {
          data: [],
        },
      }
    },
    created() {

      this.list();

    },
    watch:
    {
        usuarios()
        {
            let sexo = []

            this.sexo.forEach(function(item, index) 
            {
              sexo[index] = [item.tx_sexo, item.nu_cantidad];
            }, this);
  
            this.chartSexo = { data: sexo } ;
        },
        sexo()
        {
            let usuarios = []

            this.usuarios.forEach(function(item, index) 
            {
              usuarios[index] = [item.fe_creado, item.nu_cantidad];
            }, this);
  
            this.chartUsuarios = { data: usuarios } ;
        }
    },
    methods:{

        list()
        {
            axios.get('/api/v1/home/data')
            .then(respuesta => 
            {        
                this.registrados    = respuesta.data.registrados; 
                this.paises         = respuesta.data.paises[0].nu_cantidad;
                this.discapacitados = respuesta.data.discapacidad;
                this.familiares     = respuesta.data.familiares;
                this.usuarios       = respuesta.data.usuario; 
                this.sexo           = respuesta.data.sexo; 
            })
            .catch(error => 
            {
                this.showError(error)
            })
        },
    }

}

</script>

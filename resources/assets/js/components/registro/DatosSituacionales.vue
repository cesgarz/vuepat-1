<template>
    <v-card>
    <v-card-text>
    <v-layout wrap>
        
        <v-flex sm12 mb-3>
            <v-subheader dark class="primary">
                <v-icon>home</v-icon>
                  Vivienda Actual (Extranjero)
                </v-subheader>
            <v-divider></v-divider>
        </v-flex>
        
        <v-flex sm4>
        <v-autocomplete        
        :items="listas.pais"
        label="Pais de Residencia"
        item-text="nb_pais"
        item-value="co_pais"
        v-model="form.ext.co_pais"
        required
        @change="getRegion()"
        ></v-autocomplete>
        </v-flex>

        <v-flex sm4>
        <v-select
        :items="ubicacion.estado"
        item-text="region"
        item-value="region"
        v-model="form.ext.nb_estado"
        label="Estado/Provincia"
        :loading="ubicacion.regionLoad"
        required
        @change="getCiudad()"
        ></v-select>
        </v-flex>

        <v-flex sm4>
        <v-select
        :items="ubicacion.ciudad"
        item-text="city"
        item-value="city"
        v-model="form.ext.nb_ciudad"
        :loading="ubicacion.ciudadLoad"
        label="Ciudad"
        required
        ></v-select>
        </v-flex>

        <v-flex sm8>
        <v-text-field
            name="name"
            label="Calle / Avenida / Carrera"
            id="id"
        ></v-text-field>
        </v-flex>

        <v-flex sm4>
        <v-text-field
            name="name"
            label="Casa /Edificio"
            id="id"
        ></v-text-field>
        </v-flex>

        <v-flex sm4>
        <v-text-field
            name="name"
            label="Telf. de Habitacion"
            id="id"
        ></v-text-field>
        </v-flex>

        <v-flex sm4>
            <v-select
            :items="['Alquilada','Comodato','Cedida/Heredada', 'Nucleo Familiar', 'Propia Pagada', 'Propia Pangandose', 'Prestada']"
            label="Status de la Vivienda"
            required
            ></v-select>
        </v-flex>

        <v-flex sm4>
        <v-slider
            v-model="form.ext.nu_personas"
            hint="Nro. de personas que habitan en la vivienda"
            label="Personas"
            persistent-hint
            step="1"
            thumb-label="always"
            :value="[0, 5]"
            max="5"
            ticks
        ></v-slider>
        </v-flex>

        <v-flex sm12 mb-3 mt-4>
            <v-subheader dark class="primary">
                <v-icon>home</v-icon> Vivienda en Venezuela
            </v-subheader>
            <v-divider></v-divider>
        </v-flex>
    
        <v-flex sm4>
        <v-select
        :items="['Casa', 'Apartamento', 'Otros (Especifique)']"
        label="Tipo de Vivienda"
        required
        ></v-select>
        </v-flex>

        <v-flex sm4>
            <v-select
            :items="['Alquilada','Comodato','Cedida/Heredada', 'Nucleo Familiar', 'Propia Pagada', 'Propia Pangandose', 'Prestada']"
            label="Status de la Vivienda"
            required
            ></v-select>
        </v-flex>

        <v-flex sm4>
            <v-select
            :items="estados"
            label="Estado"
            required
            ></v-select>
        </v-flex>

        <v-flex sm4>
            <v-select
            :items="ciudades"
            label="Ciudad"
            required
            ></v-select>
        </v-flex>

        <v-flex sm8>
        <v-text-field
            name="name"
            label="Calle / Avenida / Barrio"
            id="id"
        ></v-text-field>
        </v-flex>

        <v-flex sm8>
            <v-select
            chips
            deletable-chips
            :items="['Electicidad','Agua potable','Agua Servida','Linea Telefonica','Gas domestico','Otros']"
            label="Servicios Basicos"
            required
            multiple
            ></v-select>
        </v-flex>

        <v-flex sm4>
        <v-slider
            v-model="form.nac.nu_personas"
            hint="Nro. de personas que habitan en la vivienda"
            label="Personas"
            persistent-hint
            step="1"
            thumb-label="always"
            :value="[0, 5]"
            max="5"
            ticks
        ></v-slider>
        </v-flex>

<pre>{{$data}}</pre>


    </v-layout>
    </v-card-text>
    </v-card>
</template>

<script>

import formHelper   from '../../components/mixins/formHelper';
import withSnackbar from '../../components/mixins/withSnackbar';
import VueJsonp from 'vue-jsonp'
Vue.use(VueJsonp)

export default {
    name: 'datos-situacionales',
    mixins: [ formHelper, withSnackbar ],
    data() 
    {
        return {
            tabla: 'vivienda',
            form: {
                ext:    
                {
                    id_ubicacion:   2,
                    id_tipo_vivienda: null,
                    co_pais:     null,
                    nb_estado:   null,
                    nb_ciudad:   null,
                    tx_calle:    null,
                    tx_casa:     null,
                    tx_telefono: null,
                    id_status:   null,
                    nu_personas: 0,
                },
                nac:
                {
                    id_ubicacion:   1,
                    id_tipo_vivienda: null,
                    co_pais:     've',
                    nb_estado:   null,
                    nb_ciudad:   null,
                    tx_calle:    null,
                    tx_casa:     null,
                    tx_telefono: null,
                    id_status:   null,
                    nu_personas: 0,
                    servicios:[]
                }

            },
            listas:{
                pais:         [],
                tipoVivienda: [],
                //estado:       [],
            },
            ubicacion:{
                key:     "32b8a15ada11d325f3efd61000bb6974",
                url:     "https://battuta.medunes.net/api/",
                estado:  [],
                ciudad:  [],
                regionLoad: false,
                ciudadLoad: false,
            },
            estados: ['DTTO. CAPITAL','ANZOATEGUI','APURE','ARAGUA','BARINAS','BOLIVAR','CARABOBO','COJEDES','FALCON','GUARICO','LARA','MERIDA','MIRANDA','MONAGAS','NUEVA ESPARTA','PORTUGUESA','SUCRE','TACHIRA','TRUJILLO','YARACUY','ZULIA','AMAZONAS','DELTA AMACURO','VARGAS'],
            ciudades:['CARACAS', 'VALENCIA', 'MARACAIBO', 'LOS TEQUES', 'GUANARE', 'SAN CARLOS', 'CORO'],
        }
    },

    methods:
    {
        getRegion()
        {   
            
            let co_pais = this.form.ext.co_pais;
            console.log('region',co_pais)
            if(co_pais)
            {
               this.ubicacion.regionLoad = true;
               this.$jsonp(this.ubicacion.url + 'region/' + co_pais + '/all/?key=' + this.ubicacion.key, { })
                .then(json => {
                    this.ubicacion.estado = json;
                    this.ubicacion.regionLoad = false;
                }).catch(err => {
                    this.showError(error);
                })
            }
        },
        getCiudad()
        {
            
            let co_pais   = this.form.ext.co_pais;
            let nb_estado = this.form.ext.nb_estado;
            console.log('ciudad',co_pais, nb_estado)
            if(co_pais && nb_estado)
            {
               this.ubicacion.ciudadLoad = true;
               this.$jsonp(this.ubicacion.url + 'city/' + co_pais + '/search/?region='+ nb_estado+'&key=' + this.ubicacion.key, { })
                .then(json => {
                    this.ubicacion.ciudad = json;
                    this.ubicacion.ciudadLoad = false;
                }).catch(err => {
                    this.showError(error);
                })
            }

        },
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

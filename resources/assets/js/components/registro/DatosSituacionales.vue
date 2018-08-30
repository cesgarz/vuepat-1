<template>
    <v-form ref="form" v-model="valido" lazy-validation>
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
        :rules="rules.select"
        required
        @change="getRegion()"
        ></v-autocomplete>
        </v-flex>

        <v-flex sm4>
        <v-autocomplete
        :items="ubicacion.estado"
        item-text="region"
        item-value="region"
        v-model="form.ext.nb_estado"
        label="Estado/Provincia"
        :loading="ubicacion.regionLoad"
        :rules="rules.select"
        required
        @change="getCiudad()"
        no-data-text="Sin Datos"
        ></v-autocomplete>
        </v-flex>

        <v-flex sm4>
        <v-autocomplete
        :items="ubicacion.ciudad"
        item-text="city"
        item-value="city"
        v-model="form.ext.nb_ciudad"
        :loading="ubicacion.ciudadLoad"
        :rules="rules.select"
        label="Ciudad"
        required
        no-data-text="Sin Datos"
        ></v-autocomplete>
        </v-flex>

        <v-flex sm8>
        <v-text-field
            label="Calle / Avenida / Carrera"
            v-model="form.ext.tx_calle"
            :rules="rules.requerido"
        ></v-text-field>
        </v-flex>

        <v-flex sm4>
        <v-text-field
            label="Casa /Edificio"
            v-model="form.ext.tx_casa"
            :rules="rules.requerido"
        ></v-text-field>
        </v-flex>

        <v-flex sm4>
        <v-text-field
            name="name"
            label="Telf. de Habitacion"
            v-model="form.ext.tx_telefono"
            :rules="rules.requerido"
            mask="+###-###-###-######"
            hint="Ej +058-212-505-8930"
        ></v-text-field>
        </v-flex>

        <v-flex sm4>
            <v-select
            :items="listas.status"
            item-text="nb_status"
            item-value="id_status"
            v-model="form.ext.id_status"
            :rules="rules.select"
            label="Status de la Vivienda"
            ></v-select>
        </v-flex>

        <v-flex sm4>
        <v-slider
            v-model="form.ext.nu_personas"
            hint="Nro. de personas que habitan en la vivienda ( 1 a 5 o más)"
            label="Personas"
            persistent-hint
            step="1"
            thumb-label="always"
            :value="[0, 5]"
            max="5"
            :rules="rules.requerido"
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
            :items="listas.tipoVivienda"
            item-text="nb_tipo_vivienda"
            item-value="id_tipo_vivienda"
            v-model="form.nac.id_tipo_vivienda"
            :rules="rules.select"
            label="Tipo de Vivienda"
        ></v-select>
        </v-flex>

        <v-flex sm4>
            <v-select
            :items="listas.status"
            item-text="nb_status"
            item-value="id_status"
            v-model="form.nac.id_status"
            :rules="rules.select"
            label="Status de la Vivienda"
            ></v-select>
        </v-flex>

        <v-flex sm4>
            <v-autocomplete
            :items="listas.estado"
            item-text="nb_estado"
            item-value="nb_estado"
            v-model="form.nac.nb_estado"
            :rules="rules.select"
            label="Estado"
            @change="getListaCiudad()"
            ></v-autocomplete>
        </v-flex>

        <v-flex sm4>
            <v-autocomplete
            :items="listas.ciudad"
            item-text="nb_ciudad"
            item-value="nb_ciudad"
            :rules="rules.select"
            v-model="form.nac.nb_ciudad"
            :loading="listaCiudadLoad"
            label="Ciudad"
            no-data-text="Sin Datos"
            ></v-autocomplete>
        </v-flex>

        <v-flex sm8>
        <v-text-field
            name="name"
            label="Calle / Avenida / Barrio"
            v-model="form.nac.tx_calle"
            :rules="rules.requerido"
        ></v-text-field>
        </v-flex>

        <v-flex sm8>
            <v-select
            chips
            deletable-chips
            :items="listas.servicio"
            item-text="nb_servicio"
            item-value="id_servicio"
            v-model="form.nac.servicios"
            :rules="rules.select"
            label="Servicios Basicos"
            multiple
            ></v-select>
        </v-flex>

        <v-flex sm4>
        <v-slider
            v-model="form.nac.nu_personas"
            hint="Nro. de personas que habitan en la vivienda ( 1 a 5 o más)"
            label="Personas"
            persistent-hint
            step="1"
            thumb-label="always"
            :value="[0, 5]"
            max="5"
            :rules="rules.requerido"
            ticks
        ></v-slider>
        </v-flex>
    </v-layout>
    </v-card-text>
    </v-card>
    
    <v-card-actions>
        <v-spacer></v-spacer>
       <registro-buttons @update="update" @store="store" :btnAccion="btnAccion" :valido="valido"></registro-buttons>     
    </v-card-actions>
    <!-- <pre>{{$data}}</pre> --> 

    </v-form> 
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
                    id_vivienda:  null,
                    id_ubicacion:   2,
                    id_tipo_vivienda: 1,
                    co_pais:     null,
                    nb_estado:   null,
                    nb_ciudad:   null,
                    tx_calle:    null,
                    tx_casa:     null,
                    tx_telefono: null,
                    id_status:   null,
                    nu_personas: 0,
                    id_usuario:  this.$store.getters.user.id_usuario
                },
                nac:
                {
                    id_vivienda:  null,
                    id_ubicacion:   1,
                    id_tipo_vivienda: null,
                    co_pais:     've',
                    nb_estado:   null,
                    nb_ciudad:   null,
                    tx_calle:    null,
                    tx_casa:     'casa',
                    tx_telefono: null,
                    id_status:   null,
                    nu_personas: 0,
                    id_usuario:  this.$store.getters.user.id_usuario,
                    servicios:[]
                }
            },
            listas:{
                pais:         [],
                tipoVivienda: [],
                estado:       [],
                servicio:     [],
                ciudad:       ['/estado/0'],
                status:       ['/grupo/VIVIENDA']
            },
            listaCiudadLoad: false,
            ubicacion:{
                key:     "32b8a15ada11d325f3efd61000bb6974",
                url:     "https://battuta.medunes.net/api/",
                estado:  [],
                ciudad:  [],
                regionLoad: false,
                ciudadLoad: false,
            },
        }
    },

    methods:
    {
        getRegion()
        {   
            let co_pais = this.form.ext.co_pais;

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
        getListaCiudad()
        {
            console.log('listaCiudad', this.form.nac.nb_estado)
            if(this.form.nac.nb_estado)
            {
                this.listaCiudadLoad = true;
                axios.get('/api/v1/ciudad/estado/' + this.form.nac.nb_estado )
                .then(respuesta => 
                {
                    this.listas.ciudad = respuesta.data;
                    this.listaCiudadLoad = false;
                })
                .catch(error => 
                {
                    this.showError(error);
                })
                
            }
        },
        getData()
        {
            axios.get(this.basePath + 'usuario/' + this.$store.getters.user.id_usuario)
            .then(respuesta => 
            {
                this.datos = respuesta.data;
                this.mapDatos()
                if(this.datos.length > 0)
                {
                    this.btnAccion = 'upd'
                    this.$emit('completado', true);
                }
            })
            .catch(error => 
            {
                this.showError(error);
            })
        },
        store()
        {
            if (this.$refs.form.validate()) 
            {      
                axios.post(this.basePath, this.form)
                .then(respuesta => 
                {
                    this.mapIdVivienda(respuesta.data[0]);
                    this.showMessage(respuesta.data.msj)
                    this.btnAccion = 'upd'
                    this.$emit('completado', true);
                })
                .catch(error => 
                {
                    this.showError(error);
                    this.$emit('completado', false);
                })
            }
        },
        update()
        {
            if (this.$refs.form.validate()) 
            { 
                axios.put(this.basePath + 0, this.form)
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
            }
        },
        mapDatos()
        {
            if(this.datos)
            {
                for(var key0 in this.datos) {

                    let ubi = (this.datos[key0]['id_ubicacion'] == '1') ? 'nac': 'ext';

                    for(var key in this.datos[key0]) 
                    {
                        if(key == 'vivienda_servicio')
                        {
                            if(ubi == 'nac')
                            {
                               this.mapServicios(this.datos[key0][key]);
                            }
                        }
                        else
                        {
                            this.form[ubi][key]  =  this.datos[key0][key];
                        }
                    }
                }

            }
        },
        mapServicios(servicios)
        {
            if(servicios)
            {
                servicios.forEach(servicio => 
                {
                    this.form.nac.servicios.push(servicio.id_servicio)
                });
            }
        },
        mapIdVivienda(data)
        {
            if(data)
            {
                data.vivienda.forEach(vivienda => 
                {
                    if(vivienda.id_ubicacion == 1)
                    {
                        this.form.nac.id_vivienda = vivienda.id_vivienda;
                    }

                    if(vivienda.id_ubicacion == 2)
                    {
                        this.form.ext.id_vivienda = vivienda.id_vivienda;
                    }
                }, this);
            }
        },

    }
}
</script>

<style>

</style>

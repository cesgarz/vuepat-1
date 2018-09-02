<template>
    <v-container fluid grid-list-md text-xs-center>
    <v-layout row justify-center>
    <v-flex xs12>
        <v-form ref="form" v-model="valido" lazy-validation>
        <v-card>
            
        <v-card-title class="light-blue darken-3 white--text">
            <h2>Usuario</h2>
        </v-card-title>
        
        <v-card-text>
        <v-layout wrap>
        
            <v-flex xs12 sm6 >
            <v-text-field
                v-model="form.nb_usuario"
                :rules="rules.requerido"
                label="Usuario"
                prepend-icon="account_circle"
                required
                :readonly="btnAccion=='upd'"
            ></v-text-field>
            </v-flex>

            <v-flex xs12 sm6 >
            <v-text-field
                v-model="form.email"
                :rules="rules.requerido"
                label="Correo del Usuario"
                required
            ></v-text-field>
            </v-flex>

            <v-layout row wrap v-if="btnAccion=='ins'">
            <v-flex xs12 sm6 >
            <v-text-field
                v-model="form.password"
                :rules="rules.password1"
                label="Password"
                type="password"
                maxlength="10"
                required
                counter="10"
            ></v-text-field>
            </v-flex>

            <v-flex xs12 sm6 >
            <v-text-field
                v-model="checkPasswd"
                :rules="rules.password2"
                label="Comprobar Password"
                type="password"
                maxlength="10"
                required
                counter="10"
            ></v-text-field>
            </v-flex>
            </v-layout>

            <v-flex xs12>  
                <v-select
                :items="listas.status"
                item-text="nb_status"
                item-value="id_status"
                v-model="form.id_status"
                :rules="rules.select"
                label="Status del Usuario"
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
            tabla: 'usuario',
            checkPasswd: null,
            form:
            {
                id_usuario:       '',
                nb_usuario:       '',
                password:         '',
                email:            '',
                tx_observaciones: '',
                id_status:        '',
            },
            listas:
            {
                status:     ['/grupo/GRAL']
            },
            rules:{
                password1: [
                    v => !!v || 'Indique Password',
                    v => v.length > 5 || 'El password debe tener almenos 6 Caracteres'
                ],
                password2: [
                    v => !!v || 'Seleccione una Opcion (Campo Requerido)',
                    v => v == this.form.password || 'Los password no coinciden'
                ],
            }
            
        }
    },
    methods:{
        update()
        {
           
           if (this.$refs.form.validate()) 
            {           
                delete this.form.password;
                this.form.id_usuario = this.item.id_usuario;

                if(this.form.id_usuario == 1 && !confirm(' Atencion!!! Cambios al usuario Administrador favor tome sus previsiones'))
                {
                    return
                }    
                axios.put(this.basePath + this.form.id_usuario, this.form)
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

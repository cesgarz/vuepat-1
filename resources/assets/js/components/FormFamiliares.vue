<template>
    <v-card>
    <v-card-text>
    <v-layout row wrap>

        <v-flex sm12>
            <v-select
            :items="['Hijo', 'Hija', 'Abuelo', 'Abuela', 'Tio', 'Tia', 'Sobrino', 'Sobrina', 'Otros']"
            label="Parentesco"   
            prepend-icon="group"         
            required
            ></v-select>
        </v-flex>
        <v-flex sm6>
        </v-flex>

        <v-flex sm12>
         <v-text-field
          name="name"
          label="Cedula"
          id="id"
          hint="SI no posee colocar la de algun padre"
        ></v-text-field>
        </v-flex>

        <v-flex sm6>
         <v-text-field
          name="name"
          label="Nombres"
          id="id"
        ></v-text-field>
        </v-flex>

        <v-flex sm6>
         <v-text-field
          name="name"
          label="Apellidos"
          id="id"
        ></v-text-field>
        </v-flex>


        <v-flex xs12>
            <v-menu
                ref="picker"
                v-model="picker"
                full-width
                min-width="290px"
                lazy
            >
                <v-text-field
                slot="activator"
                v-model="form.fe_nacimiento"
                :rules="rules.fecha"
                label="Fecha de Nacimiento"
                prepend-icon="event"
                readonly
                required
                ></v-text-field>
                <v-date-picker v-model="form.fe_nacimiento" locale="es" 
                :max="new Date().toISOString().substr(0, 10)" 
                min="1950-01-01"></v-date-picker>
            </v-menu>
          </v-flex>

         <v-flex sm12>
              <v-select
              v-model="form.apellidos"
              chips
              deletable-chips
              :items="['GMVV', 'CLAP', 'Hogares de la Patria', 'Bonos', '0800SALUD YA', 'Chamba Jubenil']"
              label="Programa o mision recibido"
              prepend-icon="star_border"
              multiple
              required
              ></v-select>
        </v-flex>

        <v-flex xs12 sm3>
          <v-checkbox
            label="Posee anguna Discapacidad?"
            v-model="discapacidad"
            prepend-icon="accessible"
          ></v-checkbox>
        </v-flex>


        
        <v-flex sm4 v-show="discapacidad">
              <v-select
              v-model="tipoDiscap"
              :items="['Físicas', 'Sensorial', 'Congnitivas', 'Otros']"
              label="Tipo de Discapacidad"
              required
              ></v-select>
        </v-flex>

        <v-flex sm4 v-if="tipoDiscap == 'Físicas'">
              <v-select
              :items="['Miembros  superiores', 'Miembros  inferiores']"
              label="Discapacidad Fisica"
              required
              ></v-select>
        </v-flex>

        <v-flex sm4 v-if="tipoDiscap == 'Sensorial'">
              <v-select
              :items="['Auditiva', 'Visual']"
              label="Discapacidad Sensorial"
              required
              ></v-select>
        </v-flex>

        <v-flex sm4 v-if="tipoDiscap == 'Otros'">
         <v-text-field
          name="name"
          label="Otros"
          hint="indique discapacidad"
          id="id"
        ></v-text-field>
        </v-flex>

    </v-layout>
    </v-card-text>
    </v-card>
</template>

<script>
export default {
    name: 'datos-personales',
    data() 
    {
        return {
            picker: 0,
            checkbox: false,
            discapacidad: false,
            tipoDiscap: '',
            form: {
                apellidos: null,
                nombres: null,
                cedula: null,
                sexo: null,
                fe_nacimiento: null,
                apellidos: null,
                apellidos: null,
            },
            row: 0, 
            rules:{

            }
        }
    },
    watch:{
                discapacidad(val)
                {
                   console.log(val)
                   if(!val){
                        this.tipoDiscap = null
                    }
                }
            },
}
</script>

<style>

</style>

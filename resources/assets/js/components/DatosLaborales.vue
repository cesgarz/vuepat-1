<template>
    <v-card>
    <v-card-text>
    <v-layout wrap>

        <v-flex sm4>
            <v-select
            :items="['Primaria','Bachillerato','TSU','Universitaria','Cuarto Nivel','PHD']"
            label="Nivel de Estudio"
            prepend-icon="school"
            required
            ></v-select>
        </v-flex>
        <v-flex sm8>
        </v-flex>

        <v-flex sm8>
        <v-text-field
            name="name"
            label="Empresa Donde Trabaja"
            hint="Nombre o Razon Social de la Empresa"
            prepend-icon="business"
            id="id"
        ></v-text-field>
        </v-flex>

        <v-flex sm4>
            <v-select
            :items="['Agricola','Pecuaria','Construcción Civil','Obras Civiles','Comercio','Turismo','Educación','Salud','Finanzas','Ambiental','Pesca','Alimentos','Textil','Confección','Metalmecanica','Forestal']"
            label="Sector"
            hint="Sector en el que se desempeña"
            required
            ></v-select>
        </v-flex>

        <v-flex sm4>
            <v-select
            :items="['Obrero (especifique)','Administrativo (especifique)','Otros (especifique)']"
            label="Tipo de Cargo"
            required
            prepend-icon="work_outline"
            v-model="form.tipoCargo"
            ></v-select>
        </v-flex>

        <v-flex sm8>
        <v-text-field  v-show="form.tipoCargo"
            name="name"
            label="Cargo"
            id="id"
        ></v-text-field>
        </v-flex>

        <v-flex sm3>
            <v-select
            :items="['4 HORAS','8 HORAS','12 HORAS','MÁS DE 12 HORAS']"
            label="Jornada de trabajo"
            hint="Indique las horas de trabajo al dia"
            v-model="form.jornada"
            prepend-icon="timer"
            required
            ></v-select>
        </v-flex>

        <v-flex sm3>
            <v-select  v-show="form.jornada"
            :items="['Por Hora','Días','Semanas','Mes']"
            label="Remuneracion"
            v-model="form.remuneracion"
            prepend-icon="attach_money"
            required
            ></v-select>
        </v-flex>

        <v-flex sm3>
            <v-select v-show="form.remuneracion"
            :items="['Soles','Pesos','Boliviano', 'Lempira', 'Real', 'Dolares','Euros']"
            label="Moneda"
            v-model="form.moneda"
            required
            ></v-select>
        </v-flex>

        <v-flex sm3>
        <v-text-field v-show="form.remuneracion"
            name="name"
            label="Monto"
            id="id"
        ></v-text-field>
        </v-flex>

        <v-flex xs12 sm3>
          <v-checkbox
            label="Empresa/Negocio Propio?"
            v-model="form.propio"
            prepend-icon="shop"
          ></v-checkbox>
        </v-flex>

        <v-flex sm9 v-show="form.propio">
        <v-text-field 
            name="name"
            label="Negocio o Empresa"
            id="id"
        ></v-text-field>
        </v-flex>


        <v-flex sm12>
        <v-subheader dark class="primary"><v-icon>work</v-icon> Empleos en Venezuela (Ultimos 2)</v-subheader>
        </v-flex>

        <v-flex sm4>
        <v-text-field
            name="name"
            label="Empresa"
            id="id"
            prepend-icon="business"
        ></v-text-field>
        </v-flex>

         <v-flex sm4>
        <v-text-field
            name="name"
            label="Cargo"
            id="id"
        ></v-text-field>
        </v-flex>

        <v-flex sm4>
        <v-text-field
            name="name"
            label="Tiempo en la Empresa"
            id="id"
        ></v-text-field>
        </v-flex>

        <v-flex sm4>
        <v-text-field
            name="name"
            label="Empresa"
            id="id"
            prepend-icon="business"
        ></v-text-field>
        </v-flex>

         <v-flex sm4>
        <v-text-field
            name="name"
            label="Cargo"
            id="id"
        ></v-text-field>
        </v-flex>

        <v-flex sm4>
        <v-text-field
            name="name"
            label="Tiempo en la Empresa"
            id="id"
        ></v-text-field>
        </v-flex>




    </v-layout>
    </v-card-text>
    </v-card>
</template>

<script>
export default {
    name: 'datos-situacionales',
    data() 
    {
        return {
            picker: 0,
            checkbox: false,
            value: 0,
            form: {
                tipoCargo: false,
                jornada: false,
                remuneracion: false,
                propio: false,
            },
            row: 0, 
            rules:{

            }
        }
    }
}
</script>

<style>

</style>

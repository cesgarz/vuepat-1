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
        :items="paises"
        label="Pais de Residencia"
        required
        ></v-autocomplete>
        </v-flex>

        <v-flex sm4>
        <v-select
        :items="['Buenos Aires', 'Bogota', 'La Paz', 'Ciudad Mexico', 'Santiago', 'Managua', 'San Salvador']"
        label="Estado/Provincia"
        required
        ></v-select>
        </v-flex>

        <v-flex sm4>
            <v-select
            :items="['Buenos Aires', 'Bogota', 'La Paz', 'Ciudad Mexico', 'Santiago', 'Managua', 'San Salvador']"
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
            v-model="value"
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
            v-model="value"
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
                apellidos: null,
                nombres: null,
                cedula: null,
                sexo: null,
                fe_nacimiento: null,
                apellidos: null,
                apellidos: null,
            },
            paises: ["Afghanistan","Albania","Algeria","Andorra","Angola","Anguilla","Antigua and Barbuda","Argentina","Armenia","Aruba","Australia","Austria","Azerbaijan","Bahamas","Bahrain","Bangladesh","Barbados","Belarus","Belgium","Belize","Benin","Bermuda","Bhutan","Bolivia","Bosnia and Herzegovina","Botswana","Brazil","Brunei Darussalam","Bulgaria","Burkina Faso","Burundi","Cambodia","Cameroon","Canada","Cape Verde","Cayman Islands","Central African Republic","Chad","Chile","China","Christmas Island","Cocos (Keeling) Islands","Colombia","Comoros","Congo","Cook Islands","Costa Rica","Cote D\u0027Ivoire (Ivory Coast)","Croatia (Hrvatska)","Cuba","Cyprus","Czech Republic","Democratic Republic of the Congo","Denmark","Djibouti","Dominica","Dominican Republic","Ecuador","Egypt","El Salvador","Equatorial Guinea","Eritrea","Estonia","Ethiopia","Falkland Islands (Malvinas)","Faroe Islands","Federated States of Micronesia","Fiji","Finland","France","French Guiana","French Polynesia","French Southern Territories","Gabon","Gambia","Georgia","Germany","Ghana","Gibraltar","Great Britain (UK)","Greece","Greenland","Grenada","Guadeloupe","Guatemala","Guinea","Guinea-Bissau","Guyana","Haiti","Honduras","Hong Kong","Hungary","Iceland","India","Indonesia","Iran","Iraq","Ireland","Israel","Italy","Jamaica","Japan","Jordan","Kazakhstan","Kenya","Kiribati","Korea (North)","Korea (South)","Kuwait","Kyrgyzstan","Laos","Latvia","Lebanon","Lesotho","Liberia","Libya","Liechtenstein","Lithuania","Luxembourg","Macao","Macedonia","Madagascar","Malawi","Malaysia","Maldives","Mali","Malta","Marshall Islands","Martinique","Mauritania","Mauritius","Mayotte","Mexico","Moldova","Monaco","Mongolia","Montserrat","Morocco","Mozambique","Myanmar","Namibia","Nauru","Nepal","Netherlands","Netherlands Antilles","New Caledonia","New Zealand (Aotearoa)","Nicaragua","Niger","Nigeria","Niue","Norfolk Island","Northern Mariana Islands","Norway","NULL","Oman","Pakistan","Palau","Palestinian Territory","Panama","Papua New Guinea","Paraguay","Peru","Philippines","Pitcairn","Poland","Portugal","Qatar","Reunion","Romania","Russian Federation","Rwanda","S. Georgia and S. Sandwich Islands","Saint Helena","Saint Kitts and Nevis","Saint Lucia","Saint Pierre and Miquelon","Saint Vincent and the Grenadines","Samoa","San Marino","Sao Tome and Principe","Saudi Arabia","Senegal","Seychelles","Sierra Leone","Singapore","Slovakia","Slovenia","Solomon Islands","Somalia","South Africa","Spain","Sri Lanka","Sudan","Suriname","Svalbard and Jan Mayen","Swaziland","Sweden","Switzerland","Syria","Taiwan","Tajikistan","Tanzania","Thailand","Togo","Tokelau","Tonga","Trinidad and Tobago","Tunisia","Turkey","Turkmenistan","Turks and Caicos Islands","Tuvalu","Uganda","Ukraine","United Arab Emirates","United States of America","Uruguay","Uzbekistan","Vanuatu","Venezuela","Viet Nam","Virgin Islands (British)","Virgin Islands (U.S.)","Wallis and Futuna","Western Sahara","Yemen","Zaire (former)","Zambia","Zimbabwe"],
            estados: ['DTTO. CAPITAL','ANZOATEGUI','APURE','ARAGUA','BARINAS','BOLIVAR','CARABOBO','COJEDES','FALCON','GUARICO','LARA','MERIDA','MIRANDA','MONAGAS','NUEVA ESPARTA','PORTUGUESA','SUCRE','TACHIRA','TRUJILLO','YARACUY','ZULIA','AMAZONAS','DELTA AMACURO','VARGAS'],
            ciudades:['CARACAS', 'VALENCIA', 'MARACAIBO', 'LOS TEQUES', 'GUANARE', 'SAN CARLOS', 'CORO'],
            row: 0, 
            rules:{

            }
        }
    }
}
</script>

<style>

</style>

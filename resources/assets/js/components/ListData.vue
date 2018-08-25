<template>
    <v-card v-if="visible">
    
    <v-toolbar dark color="blue accent-1 white--text">
        <v-card-title primary-title primary>
           <h3> {{ titulo }} </h3>
        </v-card-title>
        <v-spacer></v-spacer>
        <v-btn icon @click="$emit('cerrar')">
            <v-icon>clear</v-icon>
        </v-btn>  
    </v-toolbar>
    
    <v-card-text>
        
    <v-list dense two-line subheader>

        <v-list-tile v-for="(texto, titulo) in items" :key="titulo" >
            <v-list-tile-content>
            <v-list-tile-title>{{titulo}}</v-list-tile-title>
            <v-list-tile-sub-title>{{texto}}</v-list-tile-sub-title>
            </v-list-tile-content>
        </v-list-tile> 

           <slot></slot>

    </v-list>
    
    </v-card-text>
</v-card>
</template>

<script>
export default {
    props: ['titulo' , 'items', 'visible'],
}
</script>
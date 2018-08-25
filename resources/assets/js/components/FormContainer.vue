<template>

<v-dialog v-model="modal" width="800" >
    <v-card>

        <v-toolbar dark color="red darken-1 lighten-4 white--text">
           
            <v-btn icon dark @click.native="cerrarModal">
                <v-icon>close</v-icon>
            </v-btn>

            <v-toolbar-title>
                {{ nbAccion }}
            </v-toolbar-title>

        </v-toolbar>

        <v-card-text> 

              <slot></slot>

        </v-card-text>

    </v-card>

</v-dialog>

    
</template>

<script>
export default {
    name: 'form-container',
    props:['nbAccion', 'modal'],
    methods:{
        cerrarModal(){
            this.$emit('cerrarModal');
        }
    }
}
</script>

<style>

</style>

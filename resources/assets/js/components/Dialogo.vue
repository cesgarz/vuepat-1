<template>
     <v-dialog v-model="dialogo" persistent max-width="300">
        
        <v-card>
         
        <v-card-title class="red white--text">Atencion</v-card-title>
        <v-card-text><v-icon color="info">error</v-icon>{{ mensaje }}</v-card-text>

        <v-card-actions>
          <v-spacer></v-spacer> 
          <v-tooltip bottom>
            <v-btn slot="activator" fab small @click="delItem"  class="error">
                <v-icon>delete</v-icon>
            </v-btn>
            <span>Eliminar</span>
            </v-tooltip>

            <v-tooltip bottom>
                <v-btn  slot="activator" fab small @click="delCancel"  class="warning">
                    <v-icon>reply</v-icon>
                </v-btn>
            <span>Regresar</span>
            </v-tooltip>

        </v-card-actions>
        </v-card>

      </v-dialog>
</template>

<script>
export default {
    props: ['dialogo', 'mensaje'],

    methods:{
        
        delItem(){
           this.$emit('delItem'); 
        },
        delCancel(){
            this.$emit('delCancel'); 
        },

    }
}
</script>

<style>

</style>

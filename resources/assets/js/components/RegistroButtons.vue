<template>
<v-layout row wrap>

    <div v-if="btnAccion=='upd'">

        <v-tooltip top>
            <v-btn transition="scale-transition" slot="activator" fab @click="update" :disabled="!valido" :loading="btnLoad" class="warning">
                <v-icon>edit</v-icon>
            </v-btn>
        <span>Editar</span>
        </v-tooltip>

    </div>

    <div v-else>
        <v-tooltip top >
            <v-btn  transition="scale-transition" slot="activator" fab @click="store" :disabled="!valido" :loading="btnLoad" class="success">
                <v-icon>save_alt</v-icon>
            </v-btn>
        <span>Guardar</span>
        </v-tooltip>
    </div>

</v-layout>
    
</template>

<script>
export default {
    props: ['btnAccion', 'valido', 'btnLoad'],
    methods:
    {
        update()
        {
           this.$emit('update'); 
        },
        store()
        {
            this.$emit('store'); 
        },
    }
}


</script>

<style>

</style>

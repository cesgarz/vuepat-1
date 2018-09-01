import * as mutations from '../../store/mutation-types'
import { mapGetters } from 'vuex'

export default {
  computed: {
    ...mapGetters([
      'snackbarTimeout'
    ])
  },
  methods: {
    showMessage (message) {
      console.log(message);

      this.showSnackBar(message, 'success')
    },
    showError (error) {
           
      if(error.hasOwnProperty('response'))
      {
        console.log(error.response.status,error.response.data); 
        
        let status = error.response.status;
        let msg    = '';

        switch (status) {
          case 500:
            msg = 'Error interno ->' + error.response.data.message
            break;

          case 404:
            msg = 'Servicio No disponible'
            break;

          case 401:
            msg = 'Session invalida favor Ingresar nuevamente '
            this.showSnackBar(msg, 'error')
            window.location.href = '/'
            break;

          case 429:
            msg = 'Servicio Ocupado favor Ingresar en unos Minutos'
            break;

          case 422:
            for (var idx in error.response.data.errors) 
            {
              msg = msg + error.response.data.errors[idx];
            }
            break;

          default:
            msg = error.response.data.message
            break;
        }

        this.showSnackBar( msg, 'error')
        
      }else{

        this.showSnackBar(error, 'error')

      }
      
    },
    cleanState () {
      setTimeout(() => {
        this.$store.commit(mutations.SET_SNACKBAR_SHOW, false)
      }, this.snackbarTimeout)
    },
    showSnackBar (message, color) {
      this.$store.commit(mutations.SET_SNACKBAR_SHOW, true)
      this.$store.commit(mutations.SET_SNACKBAR_COLOR, color || 'error')
      if (typeof message === 'string') {
        this.$store.commit(mutations.SET_SNACKBAR_TEXT, message)
        this.cleanState()
        return
      }
      this.$store.commit(mutations.SET_SNACKBAR_TEXT, message.message)
      if (message.response) this.$store.commit(mutations.SET_SNACKBAR_SUBTEXT, message.response.data.message)
      this.cleanState()
    }
  }
}

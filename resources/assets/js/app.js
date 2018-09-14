
require('./bootstrap');

window.Vue = require('vue');

//tools 
Vue.component('form-buttons',        require('./components/FormButtons.vue'));
Vue.component('form-container',      require('./components/FormContainer.vue'));
Vue.component('list-buttons',        require('./components/ListButtons.vue'));

Vue.component('dialogo',             require('./components/Dialogo.vue'));
Vue.component('snackbar',            require('./components/SnackBarComponent.vue'));

//login/registro/password
Vue.component('form-login',          require('./components/frontend/form-login.vue'));
Vue.component('form-confirm',        require('./components/frontend/form-confirm.vue'));
Vue.component('form-register',       require('./components/frontend/form-register.vue'));
Vue.component('form-recovery',       require('./components/frontend/form-recovery.vue'));
Vue.component('form-passreset',      require('./components/frontend/form-passreset.vue'));

//Registro
Vue.component('home',                require('./components/Home.vue'));
Vue.component('registro',            require('./components/Registro.vue'));
Vue.component('registro-buttons',    require('./components/RegistroButtons.vue'));

Vue.component('datos-personales',    require('./components/registro/DatosPersonales.vue'));
Vue.component('datos-situacionales', require('./components/registro/DatosSituacionales.vue'));
Vue.component('datos-familiares',    require('./components/registro/DatosFamiliares.vue'));
Vue.component('motivo-salida',       require('./components/registro/MotivoSalida.vue'));
Vue.component('datos-laborales',     require('./components/registro/DatosLaborales.vue'));

//tablas maestras
Vue.component('mision-lista',        require('./components/tablas_maestras/MisionLista.vue'));
Vue.component('mision-form',         require('./components/tablas_maestras/MisionForm.vue'));
Vue.component('discapacidad-lista',  require('./components/tablas_maestras/DiscapacidadLista.vue'));
Vue.component('discapacidad-form',   require('./components/tablas_maestras/DiscapacidadForm.vue'));
Vue.component('motivo-lista',        require('./components/tablas_maestras/MotivoLista.vue'));
Vue.component('motivo-form',         require('./components/tablas_maestras/MotivoForm.vue'));
Vue.component('sector-lista',        require('./components/tablas_maestras/SectorLista.vue'));
Vue.component('sector-form',         require('./components/tablas_maestras/SectorForm.vue'));

//reportes
Vue.component('report',              require('./components/reports/Report.vue'));
Vue.component('report-data',         require('./components/reports/ReportData.vue'));
Vue.component('planilla',            require('./components/reports/Planilla.vue'));

//admin
Vue.component('usuario-lista',       require('./components/UsuarioLista.vue'));
Vue.component('usuario-form',        require('./components/UsuarioForm.vue'));
Vue.component('usuario-password',    require('./components/UsuarioPassword.vue'));

window.Vuetify = require('vuetify');
Vue.use(Vuetify)

import store from './store'
import * as actions from './store/action-types'
import * as mutations from './store/mutation-types'

import { mapGetters } from 'vuex'
import withSnackbar from './components/mixins/withSnackbar'

import colors from 'vuetify/es5/util/colors';

if (window.user) {

  if(window.location != '/')
  {
    store.commit(mutations.USER,  user)
    store.commit(mutations.LOGGED, true)
  }

}else{

  window.user= 0; 
  
    /*if(window.location.pathname != '/' &&
       window.location.pathname != '/welcome' &&
       window.location.pathname != '/registration' &&
       window.location.pathname != '/recovery'   &&
       window.location.pathname != '/password/reset/')
    {
      alert('La session actual es Invalida Favor Ingresar nuevamente ');  
      window.location = '/'
    }*/
}

Vue.use(Vuetify, {
  theme: {
    primary: colors.red.darken1, // #E53935
    secondary: colors.red.lighten4, // #FFCDD2
    accent: colors.indigo.base // #3F51B5
  }
})

const app = new Vue({
  el: '#app',
  store,
  mixins: [ withSnackbar ],
  data: () => ({
    parallax: {
      height: '0px',
      images: "/img/home.jpeg" 
    },
    drawer:           false,
    drawerRight:      false,
    changingPassword: false,
    updatingUser:     false,
    items:            []
  }),

  created: function () {

    this.windowResize();

    this.getMenu();


  },
  computed: {
    ...mapGetters({
      user: 'user'
    })
  },
  methods: {
    getMenu()
    {

      if(this.$store.getters.user){

        this.items = this.getMenuByUser();

      }
      
    },

    windowResize () {
      this.parallax.height = (window.innerHeight-90)+'px';
      window.addEventListener('resize', () => {
        this.parallax.height = (window.innerHeight-90)+'px'
      });

    },
    toogleRightDrawer () {
      this.drawerRight = !this.drawerRight
    },
    checkRoles (item) {
      if (item.role) {
        return this.$store.getters.roles.find(function (role) {
          return role == item.role
        })
      }
      return true
    },
    logout () {
      this.logoutLoading = true
      this.$store.dispatch(actions.LOGOUT).then(response => {
        window.location = '/'
      }).catch(error => {
        console.log(error)
      }).then(() => {
        this.logoutLoading = false
      })
    },
    menuItemSelected (item) {
      if (item.href) {
        if (item.new) {
          window.open(item.href)
        } else {
          window.location.href = item.href
        }
      }
    },
    frontLocation (action) {
      if (action == 'login') {
        window.location.href = '/welcome'
      }
      else if (action == 'registration') {
        window.location.href = '/registration'
      }
    },
    changePassword () {

      this.changingPassword = true
      this.$store.dispatch(actions.REMEMBER_PASSWORD, this.user.email).then(response => {
        this.showMessage(`Correo para reinicio de contraseña`)
      }).catch(error => {
        console.dir(error)
        this.showError(error)
      }).then(() => {
        this.changingPassword = false
      })
    },

    getMenuByUser () {

      if(this.$store.getters.user){

        this.$store.dispatch(actions.GET_MENU, this.$store.getters.user.id_usuario).then(response => {
          return response;
        }).catch(error => {
          console.log(error)
        }).then(() => {
          //NOTHING
        })

      }

    },
  }
});

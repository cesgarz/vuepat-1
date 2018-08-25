import getters from './getters'
import mutations from './mutations'

const state = {
  show: false,
  color: 'error',
  text: 'Ha ocurrido un error',
  subText: '',
  timeout: 3000
}

export default {
  state,
  getters,
  mutations
}

import * as types from '../../mutation-types'

export default {
  [ types.SELECTED_BANCO ] (state, banco) {
    state.selected_banco = banco
  },
  [ types.SET_BANCOS ] (state, bancos) {
    state.bancos = bancos
  }
}

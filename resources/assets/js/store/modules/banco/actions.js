import * as mutations from '../../mutation-types'
import * as actions from '../../action-types'
import users from '../../../api/banco'

export default {
  [ actions.SELECTED_BANCO ] (context, banco) {
    context.commit(mutations.SELECTED_BANCO, banco)
  },
  [ actions.FETCH_BANCOS ] (context) {
    return new Promise((resolve, reject) => {
      users.fetch().then(response => {
        context.commit(mutations.SET_BANCOS, response.banco)
        resolve(response)
      }).catch(error => {
        reject(error)
      })
    })
  },
  [ actions.UPDATE_BANCO ] (context, banco) {
    return new Promise((resolve, reject) => {
      users.update(user).then(response => {
        context.commit(mutations.BANCO, banco)
        resolve(response)
      }).catch(error => {
        reject(error)
      })
    })
  }
}

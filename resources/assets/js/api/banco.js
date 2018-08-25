import axios from 'axios'

export default {
  fetch () {
    return axios.get('/api/v1/banco')
  },
  update (user) {
    return axios.put('/api/v1/banco', {
      'name': user.name,
      'email': user.email
    })
  }
}

import axios from 'axios'

export default {
  fetch () {
    return axios.get('/api/v1/users')
  },
  update (user) {
    return axios.put('/api/v1/user', {
      'name': user.name,
      'email': user.email
    })
  },
  getRol (id_usuario) {
    return axios.post('/api/v1/rol', { 'id_usuario': id_usuario })
  },
  getMenu (id_rol) {
    return axios.post('/api/v1/menu/rol', { 'id_rol': id_rol })
  }
}

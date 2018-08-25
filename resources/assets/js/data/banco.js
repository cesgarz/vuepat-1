import axios from 'axios'

export default {
        list () {
            return axios.get('/api/v1/banco')
        },
        show (banco) {
            return axios.get('/api/v1/banco/'+banco)
        },
        update (user) {
            return axios.put('/api/v1/banco', {
            'name': user.name,
            'email': user.email
            })
        }
    
}

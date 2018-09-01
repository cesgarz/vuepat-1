

export default {
    created() {
        this.setAxios()
        this.listasLoader();
        this.basePath += this.tabla + '/' 
        this.getData();
    },
    data() {

        return {
           
            basePath:  '/api/v1/',
            datos:     null,
            valido:    false,
            btnAccion: '',
            picker:    false,
            btnLoad:   false,
            dates:     {},
            rules: {
                select: [
                    v => !!v || 'Seleccione una Opcion (Campo Requerido)',
                    ],
                mutiple: [
                    v =>  v.length > 0 || 'Seleccione una Opcion (Campo Requerido)',
                    ],    
                requerido: [
                    v => !!v || 'Campo Requerido',
                    ],
                radio: [
                    v => !!v || 'Seleccione una Opcion (Requerido)',
                    ],
                monto: [
                    v => !!v || 'Monto Requerido',
                   ],
                fecha: [
                    v => !!v || 'Fecha Requerida',
                    ],
            }

        }
    },
    props: ['validar','accion','item'],

    watch: {

        datos: function (val) {
            this.mapForm()
        },
        validar(val)
        {
            if (this.$refs.form.validate())
            {
                if(this.accion == 'ins')
                {
                    this.store()
                }
                else if(this.accion == 'upd')
                {
                    this.update()
                }
            }
            else
            {
                this.$emit('completado', false);
            }
        },
        accion: function (val) 
        {
            this.btnAccion = val;

            if(val=='upd')
            {
                this.mapForm();
                
            }else
            {
                this.clear();
            } 
            
        },
        item: function (val) {
            this.mapForm()
        }
    },
    filters: {

        formDate: function (value) {

            if (!date) return null
            const [year, month, day] = date.split('-')
            return `${day}/${month}/${year}`
        },
        formatNumber: function (value) 
        {
            let val = (value/1).toFixed(2).replace('.', ',')
            return val.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".")
        }

    },
    methods: {
        getData()
        {

        },
        formatDate (date) 
        { 
            if (!date) return null
    
            const [year, month, day] = date.split('-')
            return `${day}/${month}/${year}`
        },
        formatNumber: function (value) 
        {
            let val = (value/1).toFixed(2).replace('.', ',')
            return val.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".")
        },
        listRequests(objListas) 
        {
            let peticiones = [];

            for(var lista in objListas) 
            {
                let parametro = (objListas[lista]) ? objListas[lista] : '';

                peticiones.push(axios.get(this.basePath + lista + parametro));
            }
            return axios.all(peticiones)
        },

        listasLoader()
        {
            this.listRequests(this.listas)
            .then(
                
                axios.spread( (...dataLists) => 
                {
                    let i = 0;
                    for(var key in this.listas) 
                    {
                        this.listas[key] = dataLists[i].data
                        i++;
                    }
                })
            )
            .catch(error =>{
            
                this.showError(error);

            });
        },

        mapForm(){
            
            if(this.datos)
            {
                for(var key in this.datos) {
                    
                    if(this.form.hasOwnProperty(key)) {
                        
                        if(key.substr(0, 2) == 'fe')
                        {
                            this.dates[key] =  this.formatDate(this.datos[key]);
                        }
                        this.form[key]  =  this.datos[key];
                    }
                }
            }
            else if (this.item)
            {
                for(var key in this.item) 
                {
                    if(this.form.hasOwnProperty(key)) 
                    {
                        if(key.substr(0, 2) == 'fe')
                        {
                            this.dates[key] =  this.formatDate(this.item[key]);
                        }
                        this.form[key]  =  this.item[key];
                    }
                }
            }else
            {
                this.rstForm()
                this.upate = 'ins';
            }
            
        },

        rstForm(){
            for(var key in this.form) {

                this.form[key] = null;
            }
            for(var key in this.dates) {

                this.dates[key] = null;
            }
        },

        clear () {

            this.$refs.form.reset();
            this.rstForm();

        },

        cancel(){

            this.$emit('cerrarModal');
            this.clear();

        },
        setAxios()
        {
            let self = this
            window.axios.interceptors.response.use(function (response) {
    
                if(self.btnLoad)   {   self.btnLoad = false   }
                return response;
            
            }, function (error) {
            
                if(self.btnLoad)   {   self.btnLoad = false   }
                return error;
            
            });
        }
   
    }

}

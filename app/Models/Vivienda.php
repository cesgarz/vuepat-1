<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Vivienda extends Model
{
    protected $table 	  = 'vivienda';
	protected $primaryKey = 'id_vivienda';
	
	const 	  CREATED_AT  = 'fe_creado';
	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                            'id_persona',
                            'id_ubicacion',
                            'id_tipo_vivienda',
                            'id_pais',
                            'id_estado',
                            'id_ciudad',
                            'tx_calle',
                            'tx_casa',
                            'nu_personas',
                            'tx_observaciones',
                            'id_status',
                            'id_usuario'
                            ]; 
    
    protected $hidden     = ['id_vivienda','fe_creado','fe_actualizado'];

    public function persona()
    {
        return $this->BelongsTo('App\Models\Persona', 'id_persona');
    }

    public function ubicacion()
    {
        return $this->BelongsTo('App\Models\Ubicacion', 'id_ubicacion');
    }

    public function tipoVivienda()
    {
        return $this->BelongsTo('App\Models\TipoVivienda', 'id_tipo_vivienda');
    }

    public function pais()
    {
        return $this->BelongsTo('App\Models\Pais', 'id_pais');
    }

    public function estado()
    {
        return $this->BelongsTo('App\Models\Estado', 'id_estado');
    }

    public function ciudad()
    {
        return $this->BelongsTo('App\Models\Ciudad', 'id_ciudad');
    }

    public function status()
    {
        return $this->BelongsTo('App\Models\Status', 'id_status');
    }

    public function usuario()
    {
        return $this->BelongsTo('App\Models\Auth\Usuario', 'id_usuario');
    }
}

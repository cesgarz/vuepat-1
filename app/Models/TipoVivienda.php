<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TipoVivienda extends Model
{
    protected $table 	  = 'tipo_vivienda';
	protected $primaryKey = 'id_tipo_vivienda';
	
	const 	  CREATED_AT  = 'fe_creado';
	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                            'nb_tipo_vivienda',
                            'tx_observaciones',
                            'id_status',
                            'id_usuario'
                            ]; 
    
    protected $hidden     = ['id_tipo_vivienda','fe_creado','fe_actualizado'];

    public function status()
    {
        return $this->BelongsTo('App\Models\Status', 'id_status');
    }

    public function usuario()
    {
        return $this->BelongsTo('App\Models\Auth\Usuario', 'id_usuario');
    }
}

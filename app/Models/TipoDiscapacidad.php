<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TipoDiscapacidad extends Model
{
    protected $table 	  = 'tipo_discapacidad';
	protected $primaryKey = 'id_tipo_discapacidad';
	
	const 	  CREATED_AT  = 'fe_creado';
	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                            'tx_observaciones',
                            'id_status',
                            'id_usuario'
                            ]; 
    
    protected $hidden     = ['id_tipo_discapacidad','fe_creado','fe_actualizado'];

    public function status()
    {
        return $this->BelongsTo('App\Models\Status', 'id_status');
    }

    public function usuario()
    {
    	return $this->BelongsTo('App\Models\Auth\Usuario', 'id_usuario');
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TipoCargo extends Model
{
    protected $table 	  = 'tipo_cargo';
	protected $primaryKey = 'id_tipo_cargo';
	
	const 	  CREATED_AT  = 'fe_creado';
	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                            'nb_tipo_cargo',
                            'tx_observaciones',
                            'id_status',
                            'id_usuario'
                            ]; 
    
    protected $hidden     = ['id_tipo_cargo','fe_creado','fe_actualizado'];

    public function status()
    {
        return $this->BelongsTo('App\Models\Status', 'id_status');
    }

    public function usuario()
    {
        return $this->BelongsTo('App\Models\Auth\Usuario', 'id_usuario');
    }

}

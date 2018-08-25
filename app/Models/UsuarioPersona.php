<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UsuarioPersona extends Model
{
    protected $table 	  = 'usuario_persona';
	protected $primaryKey = 'id_usuario_persona';
	
	const 	  CREATED_AT  = 'fe_creado';
	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                            'id_usuario',
                            'id_persona',
                            'tx_observaciones',
                            'id_status'
                            ]; 
    
    protected $hidden     = ['id_usuario_persona','fe_creado','fe_actualizado'];

    public function status()
    {
        return $this->BelongsTo('App\Models\Status', 'id_status');
    }

    public function usuario()
    {
    	return $this->BelongsTo('App\Models\Auth\Usuario', 'id_usuario');
    }
}

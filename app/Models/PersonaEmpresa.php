<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PersonaEmpresa extends Model
{
    protected $table 	  = 'persona_empresa';
	protected $primaryKey = 'id_persona_empresa';
	
	const 	  CREATED_AT  = 'fe_creado';
	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                            'id_persona',
                            'tx_empresa',
                            'tx_observaciones',
                            'id_status',
                            'id_usuario'
                            ]; 
    
    protected $hidden     = ['id_transporte','fe_creado','fe_actualizado'];

    public function persona()
    {
        return $this->BelongsTo('App\Models\Persona', 'id_persona');
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

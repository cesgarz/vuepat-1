<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PersonaDiscapacidad extends Model
{
    protected $table 	  = 'persona_discapacidad';
	protected $primaryKey = 'id_persona_discapacidad';
	
	const 	  CREATED_AT  = 'fe_creado';
	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                            'id_persona',
                            'bo_discapacidad',
                            'id_tipo_discapacidad',
                            'id_discapacidad',
                            'tx_discapacidad',
                            'tx_observaciones',
                            'id_status',
                            'id_usuario',
                            ]; 

    protected $hidden     = ['fe_creado','fe_actualizado'];

    public function persona()
    {
    	return $this->BelongsTo('App\Models\Persona', 'id_persona');
    }

    public function discapacidad()
    {
    	return $this->BelongsTo('App\Models\Discapacidad', 'id_discapacidad');
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

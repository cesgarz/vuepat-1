<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PersonaMision extends Model
{
    protected $table 	  = 'persona_mision';
	protected $primaryKey = 'id_persona_mision';
	
	const 	  CREATED_AT  = 'fe_creado';
	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                            'id_persona',
                            'id_mision',
                            'tx_observaciones',
                            'id_status',
                            'id_usuario'
                            ]; 
    
    protected $hidden     = ['fe_creado','fe_actualizado'];

    public function persona()
    {
    	return $this->BelongsTo('App\Models\Persona', 'id_persona');
    }

    public function mision()
    {
    	return $this->BelongsTo('App\Models\Mision', 'id_mision');
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

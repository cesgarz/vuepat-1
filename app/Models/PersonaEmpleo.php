<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PersonaEmpleo extends Model
{
    protected $table 	  = 'persona_empleo';
	protected $primaryKey = 'id_persona_empleo';
	
	const 	  CREATED_AT  = 'fe_creado';
	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                            'id_persona',
                            'tx_empresa',
                            'tx_cargo',
                            'nu_tiempo',
                            'id_periodo',
                            'tx_observaciones',
                            'id_status',
                            'id_usuario'
                            ]; 
    
    protected $hidden     = ['fe_creado','fe_actualizado'];

    public function persona()
    {
    	return $this->BelongsTo('App\Models\Persona', 'id_persona');
    }

    public function empleo()
    {
    	return $this->BelongsTo('App\Models\empleo', 'id_empleo');
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

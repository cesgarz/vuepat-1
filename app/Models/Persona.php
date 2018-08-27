<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Persona extends Model
{
    protected $table 	  = 'persona';
	protected $primaryKey = 'id_persona';
	
	const 	  CREATED_AT  = 'fe_creado';
	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                            'nb_nombre',
                            'nb_apellido',
                            'tx_cedula',
                            'tx_sexo',
                            'fe_nacimiento',
                            'id_parentesco',
                            'id_estado_civil',
                            'tx_telefono',
                            'tx_celular',
                            'tx_observaciones',
                            'id_status',
                            'id_usuario'
                            ]; 
    
    protected $hidden     = ['fe_creado','fe_actualizado'];

    public function estadoCivil()
    {
        return $this->BelongsTo('App\Models\EstadoCivil', 'id_estado_civil');
    }

    public function status()
    {
        return $this->BelongsTo('App\Models\Status', 'id_status');
    }

    public function usuario()
    {
    	return $this->BelongsTo('App\Models\Auth\Usuario', 'id_usuario');
    }

    public function personaDiscapacidad()
    {
    	return $this->BelongsTo('App\Models\PersonaDiscapacidad', 'id_persona');
    }

    public function parentesco()
    {
    	return $this->BelongsTo('App\Models\Parentesco', 'id_parentesco');
    }

}

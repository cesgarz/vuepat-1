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
                            'bo_pasaporte',
                            'nu_pasaporte',
                            'fe_pasaporte',
                            'id_ubicacion',
                            'tx_sexo',
                            'fe_nacimiento',
                            'id_parentesco',
                            'id_estado_civil',
                            'tx_telefono',
                            'tx_celular',
                            'bo_enfermedad',
                            'tx_enfermedad',
                            'tx_observaciones',
                            'id_status',
                            'id_usuario'
                            ]; 
    
    protected $hidden     = ['fe_creado','fe_actualizado'];

    public function setNbNombreAttribute($value)
    {
        $this->attributes['nb_nombre'] = strtoupper($value);
    }

    public function setNbApellidoAttribute($value)
    {
        $this->attributes['nb_apellido'] = strtoupper($value);
    }


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
    	return $this->HasOne('App\Models\PersonaDiscapacidad', 'id_persona');
    }

    public function personaMision()
    {
    	return $this->HasMany('App\Models\PersonaMision', 'id_persona');
    }

    public function parentesco()
    {
    	return $this->BelongsTo('App\Models\Parentesco', 'id_parentesco');
    }

    public function vivienda()
    {
    	return $this->HasMany('App\Models\Vivienda', 'id_vivienda');
    }

    public function ubicacion()
    {
    	return $this->BelongsTo('App\Models\Ubicacion', 'id_ubicacion');
    }

    

    

}

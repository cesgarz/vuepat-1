<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Estudio extends Model
{
    protected $table 	  = 'estudio';
	protected $primaryKey = 'id_estudio';
	
	const 	  CREATED_AT  = 'fe_creado';
	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                            'id_persona',
                            'id_nivel_estudio',
                            'tx_observaciones',
                            'id_status',
                            'id_usuario'
                            ]; 
    
    protected $hidden     = ['id_estudio','fe_creado','fe_actualizado'];

    public function persona()
    {
    	return $this->BelongsTo('App\Models\Persona', 'id_persona');
    }

    public function nivelEstudio()
    {
    	return $this->BelongsTo('App\Models\NivelEstudio', 'id_nivel_estudio');
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

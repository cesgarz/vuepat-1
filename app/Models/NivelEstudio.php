<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class NivelEstudio extends Model
{
    protected $table 	  = 'nivel_estudio';
	protected $primaryKey = 'id_nivel_estudio';
	
	const 	  CREATED_AT  = 'fe_creado';
	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                            'nb_nivel_estudio',
                            'tx_observaciones',
                            'id_status',
                            'id_usuario'
                            ]; 
    
    protected $hidden     = ['id_nivel_estudio','fe_creado','fe_actualizado'];

    public function status()
    {
        return $this->BelongsTo('App\Models\Status', 'id_status');
    }

    public function usuario()
    {
    	return $this->BelongsTo('App\Models\Auth\Usuario', 'id_usuario');
    }
}

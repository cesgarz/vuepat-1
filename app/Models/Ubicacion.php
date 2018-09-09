<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Ubicacion extends Model
{
    protected $table 	  = 'ubicacion';
	protected $primaryKey = 'id_ubicacion';
	
	const 	  CREATED_AT  = 'fe_creado';
	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                            'nb_ubicacion',
                            'tx_observaciones',
                            'id_status',
                            'id_usuario'
                            ]; 
    
    protected $hidden     = ['id_ubicacion','fe_creado','fe_actualizado'];

    public function vivienda()
    {
        return $this->HasMany('App\Models\Vivienta', 'id_ubicacion');
    }

    public function persona()
    {
        return $this->HasMany('App\Models\Persona', 'id_ubicacion');
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

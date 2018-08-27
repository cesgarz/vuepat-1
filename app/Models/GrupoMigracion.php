<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class GrupoMigracion extends Model
{
    protected $table 	  = 'grupo_migracion';
	protected $primaryKey = 'id_grupo_migracion';
	
	const 	  CREATED_AT  = 'fe_creado';
	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                            'nb_grupo_migracion',
                            'tx_observaciones',
                            'id_status',
                            'id_usuario'
                            ]; 
    
    protected $hidden     = ['fe_creado','fe_actualizado'];

    public function status()
    {
        return $this->BelongsTo('App\Models\Status', 'id_status');
    }

    public function usuario()
    {
        return $this->BelongsTo('App\Models\Auth\Usuario', 'id_usuario');
    }

}

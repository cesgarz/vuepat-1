<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ViviendaServicio extends Model
{
    protected $table 	  = 'vivienda_servicio';
	protected $primaryKey = 'id_vivienda_servicio';
	
	const 	  CREATED_AT  = 'fe_creado';
	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                            'id_vivienda',
                            'id_servicio',
                            'tx_observaciones',
                            'id_status',
                            'id_usuario'
                            ]; 
    
    protected $hidden     = ['id_vivienda_servicio','fe_creado','fe_actualizado'];

    public function status()
    {
        return $this->BelongsTo('App\Models\Status', 'id_status');
    }

    public function usuario()
    {
        return $this->BelongsTo('App\Models\Auth\Usuario', 'id_usuario');
    }
}

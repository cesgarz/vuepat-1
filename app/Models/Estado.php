<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Estado extends Model
{
    protected $table 	  = 'estado';
	protected $primaryKey = 'id_estado';
	
	const 	  CREATED_AT  = 'fe_creado';
	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                            'nb_estado',
                            'id_pais',
                            'tx_observaciones',
                            'id_status',
                            'id_usuario'
                            ]; 
    
    protected $hidden     = ['fe_creado','fe_actualizado'];

    public function pais()
    {
        return $this->BelongsTo('App\Models\Pais', 'id_pais');
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

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Ciudad extends Model
{
    protected $table 	  = 'ciudad';
	protected $primaryKey = 'id_ciudad';
	
	const 	  CREATED_AT  = 'fe_creado';
	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                            'nb_ciudad',
                            'id_estado',
                            'tx_observaciones',
                            'id_status',
                            'id_usuario'
                            ]; 
    
    protected $hidden     = ['fe_creado','fe_actualizado'];

    public function estado()
    {
        return $this->BelongsTo('App\Models\Estado', 'id_estado');
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

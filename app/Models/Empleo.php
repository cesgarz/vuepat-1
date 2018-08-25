<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Empleo extends Model
{
    protected $table 	  = 'empleo';
	protected $primaryKey = 'id_empleo';
	
	const 	  CREATED_AT  = 'fe_creado';
	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                            'id_persona',
                            'tx_empresa',
                            'id_tipo_cargo',
                            'tx_cargo',
                            'id_jornada',
                            'id_remuneracion',
                            'id_moneda',
                            'mo_remuneracion',
                            'tx_observaciones',
                            'id_status',
                            'id_usuario'
                            ]; 
    
    protected $hidden     = ['id_empleo','fe_creado','fe_actualizado'];

    public function persona()
    {
        return $this->BelongsTo('App\Models\Persona', 'id_persona');
    }

    public function tipoCargo()
    {
        return $this->BelongsTo('App\Models\TipoCargo', 'id_tipo_cargo');
    }

    public function jornada()
    {
        return $this->BelongsTo('App\Models\Jornada', 'id_jornada');
    }

    public function remuneracion()
    {
        return $this->BelongsTo('App\Models\Remuneracion', 'id_remuneracion');
    }

    public function moneda()
    {
        return $this->BelongsTo('App\Models\Moneda', 'id_moneda');
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

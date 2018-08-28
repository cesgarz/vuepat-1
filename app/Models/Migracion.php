<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Migracion extends Model
{
    protected $table 	  = 'migracion';
	protected $primaryKey = 'id_migracion';
	
	const 	  CREATED_AT  = 'fe_creado';
	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                            'id_persona',
                            'id_motivo',
                            'id_recurso',
                            'id_grupo_migracion',
                            'tx_grupo_migracion',
                            'id_transporte',
                            'fe_salida',
                            'tx_observaciones',
                            'id_status',
                            'id_usuario'
                            ]; 
    
    protected $hidden     = ['fe_creado','fe_actualizado'];

    public function persona()
    {
        return $this->BelongsTo('App\Models\Persona', 'id_persona');
    }

    public function motivo()
    {
        return $this->BelongsTo('App\Models\Motivo', 'id_motivo');
    }

    public function recurso()
    {
        return $this->BelongsTo('App\Models\Recurso', 'id_recurso');
    }

    public function grupoMigracion()
    {
        return $this->BelongsTo('App\Models\GrupoMigracion', 'id_grupo_migracion');
    }

    public function transporte()
    {
        return $this->BelongsTo('App\Models\Transporte', 'id_transporte');
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

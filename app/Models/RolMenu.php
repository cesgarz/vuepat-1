<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class RolMenu extends Model
{
    protected $table 	  = 'rol_menu';
	protected $primaryKey = 'id_rol_menu';
	
	const 	  CREATED_AT  = 'fe_creado';
	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                            'id_rol',
                            'id_menu',
                            'tx_observaciones',
                            'id_status',
                            'id_usuario'
                            ]; 
    
    protected $hidden     = ['id_rol_menu','fe_creado','fe_actualizado'];

    public function rol()
    {
        return $this->BelongsTo('App\Models\Rol', 'id_rol');
    }

    public function menu()
    {
        return $this->BelongsTo('App\Models\Menu', 'id_menu');
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

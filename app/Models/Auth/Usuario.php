<?php

namespace App\Models\Auth;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Laravel\Passport\HasApiTokens;

class Usuario extends Authenticatable
{
    use HasApiTokens,Notifiable;

    protected $guard      = 'users';
    protected $table      = 'usuario';
    protected $primaryKey = 'id_usuario';
    
    const     CREATED_AT  = 'fe_creado';
    const     UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                            'nb_usuario',
                            'password',
                            'tx_email',
                            'tx_token',
                            'tx_observaciones',
                            'id_status',
                            'id_usuario_e',
                            ]; 
    
    protected $hidden     = ['tx_token','password','fe_creado','fe_actualizado' ];


    /**
     * @return int
     */
    public function getJWTIdentifier()
    {
        return $this->getKey();
    }

    /**
     * @return array
     */
    public function getJWTCustomClaims()
    {
        return [];
    }

    /**
    *@return string
    */
    public function getRememberTokenName()
    {
        return 'tx_token';
    }

    public function status()
    {
        return $this->BelongsTo('App\Models\Status', 'id_status');
    }

    public function persona()
    {
        return $this->hasMany('App\Models\Persona', 'id_usuario');
    }

    public function estadoCivil()
    {
        return $this->hasMany('App\Models\EstadoCivil', 'id_usuario');
    }

    public function usuarioPersona()
    {
        return $this->hasMany('App\Models\UsuarioPersona', 'id_usuario');
    }

    public function tipoPersona()
    {
        return $this->hasMany('App\Models\TipoPersona', 'id_usuario');
    }

    public function discapacidad()
    {
        return $this->hasMany('App\Models\Discapacidad', 'id_usuario');
    }

    public function tipoDiscapacidad()
    {
        return $this->hasMany('App\Models\tipoDiscapacidad', 'id_usuario');
    }

    public function personaDiscapacidad()
    {
        return $this->hasMany('App\Models\PersonaDiscapacidad', 'id_usuario');
    }

    public function parentesco()
    {
        return $this->hasMany('App\Models\parentesco', 'id_usuario');
    }

    public function mision()
    {
        return $this->hasMany('App\Models\mision', 'id_usuario');
    }

    public function personaMision()
    {
        return $this->hasMany('App\Models\personaMision', 'id_usuario');
    }

    public function nivelEstudio()
    {
        return $this->hasMany('App\Models\NivelEstudio', 'id_usuario');
    }

    public function estudio()
    {
        return $this->hasMany('App\Models\Estudio', 'id_usuario');
    }

    public function empleo()
    {
        return $this->hasMany('App\Models\Empleo', 'id_usuario');
    }

    public function tipoCargo()
    {
        return $this->hasMany('App\Models\TipoCargo', 'id_usuario');
    }

    public function migracion()
    {
        return $this->hasMany('App\Models\Migracion', 'id_usuario');
    }

    public function motivo()
    {
        return $this->hasMany('App\Models\Motivo', 'id_usuario');
    }

    public function recurso()
    {
        return $this->hasMany('App\Models\Recurso', 'id_usuario');
    }

    public function grupoMigracion()
    {
        return $this->hasMany('App\Models\GrupoMigracion', 'id_usuario');
    }

    public function transporte()
    {
        return $this->hasMany('App\Models\Transporte', 'id_usuario');
    }

    public function sector()
    {
        return $this->hasMany('App\Models\Sector', 'id_usuario');
    }

    public function personaEmpresa()
    {
        return $this->hasMany('App\Models\PersonaEmpresa', 'id_usuario');
    }

    public function jornada()
    {
        return $this->hasMany('App\Models\jornada', 'id_usuario');
    }

    public function remuneracion()
    {
        return $this->hasMany('App\Models\Remuneracion', 'id_usuario');
    }

    public function moneda()
    {
        return $this->hasMany('App\Models\Moneda', 'id_usuario');
    }

    public function vivienda()
    {
        return $this->hasMany('App\Models\Vivienda', 'id_usuario');
    }

    public function ubicacion()
    {
        return $this->hasMany('App\Models\Ubicacion', 'id_usuario');
    }

    public function tipoVivienda()
    {
        return $this->hasMany('App\Models\TipoVivienda', 'id_usuario');
    }

    public function servicio()
    {
        return $this->hasMany('App\Models\Servicio', 'id_usuario');
    }

    public function viviendaServicio()
    {
        return $this->hasMany('App\Models\ViviendaServicio', 'id_usuario');
    }

    public function pais()
    {
        return $this->hasMany('App\Models\Pais', 'id_usuario');
    }

    public function estado()
    {
        return $this->hasMany('App\Models\Estado', 'id_usuario');
    }

    public function ciudad()
    {
        return $this->hasMany('App\Models\Ciudad', 'id_usuario');
    }

    public function rolUsuario()
    {
        return $this->hasMany('App\Models\RolUsuario', 'id_usuario');
    }
        
}

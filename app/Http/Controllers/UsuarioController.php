<?php

namespace App\Http\Controllers;

use App\Models\Auth\Usuario;
use Illuminate\Http\Request;

class UsuarioController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $usuarios = Usuario::select(

                                 'id_usuario',
                                 'nb_usuario', 
                                 'nb_nombre', 
                                 'nb_apellido', 
                                 'tx_email'

                                )->with(['status'])->get();
        
        return $usuarios;
    }

    public function list()
    {
        $usuarios = Usuario::with([
            
                                'persona', 'estadoCivil', 'usuarioPersona', 
                                'tipoPersona', 'discapacidad', 'tipoDiscapacidad', 
                                'personaDiscapacidad', 'parentesco', 'mision', 
                                'personaMision', 'nivelEstudio', 'estudio', 
                                'empleo', 'tipoCargo', 'migracion', 
                                'motivo', 'recurso', 'grupoMigracion', 
                                'transporte', 'sector', 'personaEmpresa', 
                                'jornada', 'remuneracion', 'moneda', 
                                'vivienda', 'ubicacion', 'tipoVivienda', 
                                'servicio', 'viviendaServicio', 'viviendaServicios', 
                                'pais', 'estado', 'cudad', 
                                'rolUsuario', 'status'

                            ])->get();

        return $usuarios;
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Usuario  $usuario
     * @return \Illuminate\Http\Response
     */
    public function show(Usuario $usuario)
    {
        return $usuario;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Usuario  $usuario
     * @return \Illuminate\Http\Response
     */
    public function destroy(Usuario $usuario)
    {
        $usuario = $usuario->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('usuario')];
    }
}

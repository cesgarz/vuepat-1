<?php

namespace App\Http\Controllers;

use App\Models\RolUsuario;
use Illuminate\Http\Request;

class RolUsuarioController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $rolesUsuario = RolUsuario::with(['rol', 'usuario', 'status'])->get();
        
        return $rolesUsuario;
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validate = request()->validate([
            'id_usuario'        => 'required',              
            'id_rol'            => 'required',
            'tx_observaciones'  => 'max:100',
            'id_usuario'        => 'required',
            'id_status'         => 'required'
        ]);

        $rolUsuario = RolUsuario::create($request->all());
        
        return [ 'msj' => 'Registro Agregado Correctamente', compact('rolUsuario') ];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\RolUsuario  $rolUsuario
     * @return \Illuminate\Http\Response
     */
    public function show(RolUsuario $rolUsuario)
    {
        return $rolUsuario;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\RolUsuario  $rolUsuario
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, RolUsuario $rolUsuario)
    {
        $validate = request()->validate([
            'id_usuario'        => 'required',              
            'id_rol'            => 'required',
            'tx_observaciones'  => 'max:100',
            'id_usuario'        => 'required',
            'id_status'         => 'required'
        ]);
        
        $rolUsuario = $rolUsuario->update($request->all());

        return [ 'msj' => 'Registro Editado' , compact('rolUsuario')];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\RolUsuario  $rolUsuario
     * @return \Illuminate\Http\Response
     */
    public function destroy(RolUsuario $rolUsuario)
    {
        $rolUsuario = $rolUsuario->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('rolUsuario')];
    }
}

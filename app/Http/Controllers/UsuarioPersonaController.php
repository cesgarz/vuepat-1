<?php

namespace App\Http\Controllers;

use App\Models\UsuarioPersona;
use Illuminate\Http\Request;

class UsuarioPersonaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $usuariosPersona = UsuarioPersona::with(['usuario', 'status'])->get();
        
        return $usuariosPersona;
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
            'id_usuario'         => 'required',
            'id_persona'         => 'required',
            'tx_observaciones'   => 'max:100',
            'id_usuario'         => 'required',
            'id_status'          => 'required'
        ]);

        $usuarioPersona = UsuarioPersona::create($request->all());
        
        return [ 'msj' => 'Registro Agregado Correctamente', compact('usuarioPersona') ];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\UsuarioPersona  $usuarioPersona
     * @return \Illuminate\Http\Response
     */
    public function show(UsuarioPersona $usuarioPersona)
    {
        return $usuarioPersona;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\UsuarioPersona  $usuarioPersona
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, UsuarioPersona $usuarioPersona)
    {
        $validate = request()->validate([
            'id_usuario'         => 'required',
            'id_persona'         => 'required',
            'tx_observaciones'   => 'max:100',
            'id_usuario'         => 'required',
            'id_status'          => 'required'
        ]);
        
        $usuarioPersona = $usuarioPersona->update($request->all());

        return [ 'msj' => 'Registro Editado' , compact('usuarioPersona')];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\UsuarioPersona  $usuarioPersona
     * @return \Illuminate\Http\Response
     */
    public function destroy(UsuarioPersona $usuarioPersona)
    {
        $usuarioPersona = $usuarioPersona->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('usuarioPersona')];
    }
}

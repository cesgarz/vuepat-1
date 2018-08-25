<?php

namespace App\Http\Controllers;

use App\Models\TipoPersona;
use Illuminate\Http\Request;

class TipoPersonaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tiposPersona = TipoPersona::with(['usuario', 'status'])->get();
        
        return $tiposPersona;
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
            'nb_tipo_persona'   => 'required|max:50',
            'tx_observaciones'  => 'max:100',
            'id_usuario'        => 'required',
            'id_status'         => 'required'
        ]);

        $tipoPersona = TipoPersona::create($request->all());
        
        return [ 'msj' => 'Registro Agregado Correctamente', compact('tipoPersona') ];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\TipoPersona  $tipoPersona
     * @return \Illuminate\Http\Response
     */
    public function show(TipoPersona $tipoPersona)
    {
        return $tipoPersona;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\TipoPersona  $tipoPersona
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, TipoPersona $tipoPersona)
    {
        $validate = request()->validate([
            'nb_tipo_persona'   => 'required|max:50',
            'tx_observaciones'  => 'max:100',
            'id_usuario'        => 'required',
            'id_status'         => 'required'
        ]);
        
        $tipoPersona = $tipoPersona->update($request->all());

        return [ 'msj' => 'Registro Editado' , compact('tipoPersona')];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\TipoPersona  $tipoPersona
     * @return \Illuminate\Http\Response
     */
    public function destroy(TipoPersona $tipoPersona)
    {
        $tipoPersona = $tipoPersona->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('tipoPersona')];
    }
}

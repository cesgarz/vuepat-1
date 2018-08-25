<?php

namespace App\Http\Controllers;

use App\Models\TipoVivienda;
use Illuminate\Http\Request;

class TipoViviendaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tiposVivienda = TipoVivienda::with(['usuario', 'status'])->get();
        
        return $tiposVivienda;
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
            'nb_tipo_vivienda'  => 'required|max:50',
            'tx_observaciones'  => 'max:100',
            'id_usuario'        => 'required',
            'id_status'         => 'required'
        ]);

        $tipoVivienda = TipoVivienda::create($request->all());
        
        return [ 'msj' => 'Registro Agregado Correctamente', compact('tipoVivienda') ];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\TipoVivienda  $tipoVivienda
     * @return \Illuminate\Http\Response
     */
    public function show(TipoVivienda $tipoVivienda)
    {
        return $tipoVivienda;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\TipoVivienda  $tipoVivienda
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, TipoVivienda $tipoVivienda)
    {
        $validate = request()->validate([
            'nb_tipo_vivienda'  => 'required|max:50',
            'tx_observaciones'  => 'max:100',
            'id_usuario'        => 'required',
            'id_status'         => 'required'
        ]);
        
        $tipoVivienda = $tipoVivienda->update($request->all());

        return [ 'msj' => 'Registro Editado' , compact('tipoVivienda')];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\TipoVivienda  $tipoVivienda
     * @return \Illuminate\Http\Response
     */
    public function destroy(TipoVivienda $tipoVivienda)
    {
        $tipoVivienda = $tipoVivienda->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('tipoVivienda')];
    }
}

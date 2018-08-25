<?php

namespace App\Http\Controllers;

use App\Models\Vivienda;
use Illuminate\Http\Request;

class ViviendaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $vivienda = Vivienda::with(['persona', 'ubicacion', 'tipoVivienda', 'pais', 'estado', 'ciudad', 'usuario', 'status'])->get();
        
        return $vivienda;
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
            'id_persona'        => 'required',
            'id_ubicacion'      => 'required',
            'id_tipo_vivienda'  => 'required',
            'id_pais'           => 'required',
            'id_estado'         => 'required',
            'id_ciudad'         => 'required',
            'tx_calle'          => 'required|max:100',
            'tx_casa'           => 'required|mas:100',
            'nu_personas'       => 'required|numeric',
            'tx_observaciones'  => 'max:100',
            'id_usuario'        => 'required',
            'id_status'         => 'required'
        ]);

        $vivienda = Vivienda::create($request->all());
        
        return [ 'msj' => 'Registro Agregado Correctamente', compact('vivienda') ];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Vivienda  $vivienda
     * @return \Illuminate\Http\Response
     */
    public function show(Vivienda $vivienda)
    {
        return $vivienda;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Vivienda  $vivienda
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Vivienda $vivienda)
    {
         $validate = request()->validate([
            'id_persona'        => 'required',
            'id_ubicacion'      => 'required',
            'id_tipo_vivienda'  => 'required',
            'id_pais'           => 'required',
            'id_estado'         => 'required',
            'id_ciudad'         => 'required',
            'tx_calle'          => 'required|max:100',
            'tx_casa'           => 'required|mas:100',
            'nu_personas'       => 'required|numeric',
            'tx_observaciones'  => 'max:100',
            'id_usuario'        => 'required',
            'id_status'         => 'required'
        ]);
        
        $ciudad = $ciudad->update($request->all());

        return [ 'msj' => 'Registro Editado' , compact('ciudad')];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Vivienda  $vivienda
     * @return \Illuminate\Http\Response
     */
    public function destroy(Vivienda $vivienda)
    {
        $vivienda = $vivienda->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('vivienda')];
    }
}

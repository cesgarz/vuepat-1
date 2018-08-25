<?php

namespace App\Http\Controllers;

use App\Models\ViviendaServicio;
use Illuminate\Http\Request;

class ViviendaServicioController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $viviendasServicio = ViviendaServicio::with(['usuario', 'status'])->get();
        
        return $viviendasServicio;
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
            'id_vivienda'       => 'required',
            'id_servicio'       => 'required',
            'tx_observaciones'  => 'max:100',
            'id_usuario'        => 'required',
            'id_status'         => 'required'
        ]);

        $viviendaServicio = ViviendaServicio::create($request->all());
        
        return [ 'msj' => 'Registro Agregado Correctamente', compact('viviendaServicio') ];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\ViviendaServicio  $viviendaServicio
     * @return \Illuminate\Http\Response
     */
    public function show(ViviendaServicio $viviendaServicio)
    {
        return $viviendaServicio;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\ViviendaServicio  $viviendaServicio
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, ViviendaServicio $viviendaServicio)
    {
        $validate = request()->validate([
            'id_vivienda'       => 'required',
            'id_servicio'       => 'required',
            'tx_observaciones'  => 'max:100',
            'id_usuario'        => 'required',
            'id_status'         => 'required'
        ]);
        
        $viviendaServicio = $viviendaServicio->update($request->all());

        return [ 'msj' => 'Registro Editado' , compact('viviendaServicio')];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\ViviendaServicio  $viviendaServicio
     * @return \Illuminate\Http\Response
     */
    public function destroy(ViviendaServicio $viviendaServicio)
    {
        $viviendaServicio = $viviendaServicio->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('viviendaServicio')];
    }
}

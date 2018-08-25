<?php

namespace App\Http\Controllers;

use App\Models\TipoDiscapacidad;
use Illuminate\Http\Request;

class TipoDiscapacidadController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tiposDiscapacidad = TipoDiscapacidad::select('id_tipo_discapacidad', 'nb_tipo_discapacidad', 'id_status')
                                               ->where('id_status', 1)
                                               ->get();
        
        return $tiposDiscapacidad;
    }

    public function lista()
    {
        $tiposDiscapacidad = TipoDiscapacidad::with(['usuario', 'status'])->get();
        
        return $tiposDiscapacidad;
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
            'nb_tipo_discapacidad'   => 'required|max:20',
            'tx_observaciones'       => 'max:100',
            'id_usuario'             => 'required',
            'id_status'              => 'required'
        ]);

        $tipoDiscapacidad = TipoDiscapacidad::create($request->all());
        
        return [ 'msj' => 'Registro Agregado Correctamente', compact('tipoDiscapacidad') ];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\TipoDiscapacidad  $tipoDiscapacidad
     * @return \Illuminate\Http\Response
     */
    public function show(TipoDiscapacidad $tipoDiscapacidad)
    {
        return $tipoDiscapacidad;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\TipoDiscapacidad  $tipoDiscapacidad
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, TipoDiscapacidad $tipoDiscapacidad)
    {
        $validate = request()->validate([
            'nb_tipo_discapacidad'   => 'required|max:20',
            'tx_observaciones'       => 'max:100',
            'id_usuario'             => 'required',
            'id_status'              => 'required'
        ]);
        
        $tipoDiscapacidad = $tipoDiscapacidad->update($request->all());
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\TipoDiscapacidad  $tipoDiscapacidad
     * @return \Illuminate\Http\Response
     */
    public function destroy(TipoDiscapacidad $tipoDiscapacidad)
    {
        $tipoDiscapacidad = $tipoDiscapacidad->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('tipoDiscapacidad')];
    }
}

<?php

namespace App\Http\Controllers;

use App\Models\Empleo;
use Illuminate\Http\Request;

class EmpleoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $empleo = Empleo::with(['persona', 'tipo_cargo', 'jornada', 'remuneracion', 'moneda', 'usuario', 'status'])->get();
        return $empleo;
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
            'tx_empresa'        => 'required|max:100',
            'id_tipo_cargo'     => 'required',
            'tx_cargo'          => 'required|max:100',
            'id_jornada'        => 'required',
            'id_remuneracion'   => 'required', 
            'id_moneda'         => 'required',
            'mo_remuneracion'   => 'required|numeric|min:2|max:15',
            'bo_empresa_propia' => 'boolean',
            'nb_empresa_propia' => 'max:100',
            'tx_observaciones'  => 'max:100', 
            'id_status'         => 'required',
            'id_usuario'        => 'required'
        ]);

        $empleo = Empleo::create($request->all());
        
        return [ 'msj' => 'Registro Agregado Correctamente', compact('empleo') ];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Empleo  $empleo
     * @return \Illuminate\Http\Response
     */
    public function show(Empleo $empleo)
    {
        return $empleo;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Empleo  $empleo
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Empleo $empleo)
    {
        $validate = request()->validate([
            'id_persona'        => 'required',
            'tx_empresa'        => 'required|max:100',
            'id_tipo_cargo'     => 'required',
            'tx_cargo'          => 'required|max:100',
            'id_jornada'        => 'required',
            'id_remuneracion'   => 'required', 
            'id_moneda'         => 'required',
            'mo_remuneracion'   => 'required|numeric|min:2|max:15',
            'bo_empresa_propia' => 'boolean',
            'nb_empresa_propia' => 'max:100',
            'tx_observaciones'  => 'max:100', 
            'id_status'         => 'required',
            'id_usuario'        => 'required'
        ]);

        $empleo = $empleo->update($request->all());
        
        return [ 'msj' => 'Registro Editado Correctamente', compact('empleo') ];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Empleo  $empleo
     * @return \Illuminate\Http\Response
     */
    public function destroy(Empleo $empleo)
    {
        $empleo = $empleo->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('empleo')];
    }
}

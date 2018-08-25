<?php

namespace App\Http\Controllers;

use App\Models\TipoCargo;
use Illuminate\Http\Request;

class TipoCargoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tiposCargo = TipoCargo::with(['usuario', 'status'])->get();
        
        return $tiposCargo;
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
            'nb_tipo_cargo'     => 'required|max:20',
            'tx_observaciones'  => 'max:100',
            'id_usuario'        => 'required',
            'id_status'         => 'required'
        ]);

        $tipoCargo = TipoCargo::create($request->all());
        
        return [ 'msj' => 'Registro Agregado Correctamente', compact('tipoCargo') ];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\TipoCargo  $tipoCargo
     * @return \Illuminate\Http\Response
     */
    public function show(TipoCargo $tipoCargo)
    {
        return $tipoCargo;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\TipoCargo  $tipoCargo
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, TipoCargo $tipoCargo)
    {
        $validate = request()->validate([
            'nb_tipo_cargo'     => 'required|max:20',
            'tx_observaciones'  => 'max:100',
            'id_usuario'        => 'required',
            'id_status'         => 'required'
        ]);
        
        $tipoCargo = $tipoCargo->update($request->all());

        return [ 'msj' => 'Registro Editado' , compact('tipoCargo')];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\TipoCargo  $tipoCargo
     * @return \Illuminate\Http\Response
     */
    public function destroy(TipoCargo $tipoCargo)
    {
        $tipoCargo = $tipoCargo->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('tipoCargo')];
    }
}

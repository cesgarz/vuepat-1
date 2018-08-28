<?php

namespace App\Http\Controllers;

use App\Models\Transporte;
use Illuminate\Http\Request;

class TransporteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $transportes = Transporte::select('id_transporte', 'nb_transporte')
                                    ->where('id_status', 1)
                                    ->get();
   
        return $transportes;
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
            'nb_transporte'     => 'required|max:50',
            'tx_observaciones'  => 'max:100',
            'id_usuario'        => 'required',
            'id_status'         => 'required'
        ]);

        $transporte = Transporte::create($request->all());
        
        return [ 'msj' => 'Registro Agregado Correctamente', compact('transporte') ];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Transporte  $transporte
     * @return \Illuminate\Http\Response
     */
    public function show(Transporte $transporte)
    {
        return $transporte;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Transporte  $transporte
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Transporte $transporte)
    {
        $validate = request()->validate([
            'nb_transporte'     => 'required|max:50',
            'tx_observaciones'  => 'max:100',
            'id_usuario'        => 'required',
            'id_status'         => 'required'
        ]);
        
        $transporte = $transporte->update($request->all());

        return [ 'msj' => 'Registro Editado' , compact('transporte')];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Transporte  $transporte
     * @return \Illuminate\Http\Response
     */
    public function destroy(Transporte $transporte)
    {
        $transporte = $transporte->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('transporte')];
    }
}

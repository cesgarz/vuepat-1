<?php

namespace App\Http\Controllers;

use App\Models\Ciudad;
use App\Models\Estado;
use Illuminate\Http\Request;

class CiudadController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $ciudad = Ciudad::select('id_ciudad', 'nb_ciudad')
                            ->where('id_status', 1)
                            ->get();
        return $ciudad;
    }

    public function ciudadEstado($nb_estado)
    {
        $estado = Estado::where('nb_estado', $nb_estado)->first();
        
        if( count($estado) > 0 )
        {
            $ciudad = Ciudad::select('id_ciudad', 'nb_ciudad')
                            ->where('id_status', 1)
                            ->where('id_estado', $estado->id_estado)
                            ->get();

        }
        else
        {
            $ciudad = [];
        }
        
        return $ciudad;
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
            'nb_ciudad'         => 'required|max:50',
            'id_estado'         => 'required',
            'tx_observaciones'  => 'max:100',
            'id_usuario'        => 'required',
            'id_status'         => 'required'
        ]);

        $ciudad = Ciudad::create($request->all());
        
        return [ 'msj' => 'Registro Agregado Correctamente', compact('ciudad') ];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Ciudad  $ciudad
     * @return \Illuminate\Http\Response
     */
    public function show(Ciudad $ciudad)
    {
        return $ciudad;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Ciudad  $ciudad
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Ciudad $ciudad)
    {
        $validate = request()->validate([
            'nb_ciudad'         => 'required|max:50',
            'id_estado'         => 'required',
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
     * @param  \App\Models\Ciudad  $ciudad
     * @return \Illuminate\Http\Response
     */
    public function destroy(Ciudad $ciudad)
    {
        $ciudad = $ciudad->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('ciudad')];
    }
}

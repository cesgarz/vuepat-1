<?php

namespace App\Http\Controllers;

use App\Models\EstadoCivil;
use Illuminate\Http\Request;

class EstadoCivilController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $estadoCivil = EstadoCivil::select('id_estado_civil', 'nb_estado_civil', 'id_status')
                                    ->where('id_status', 1)
                                    ->get();
                                    
        return $estadoCivil;
    }

    public function lista()
    {
        $estadoCivil = EstadoCivil::with(['usuario', 'status'])->get();
        return $estadoCivil;
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
            'nb_estado_civil'      => 'required|max:20',
            'tx_observaciones'     => 'max:100',
            'id_usuario'           => 'required',
            'id_status'            => 'required'
        ]);

        $estadoCivil = EstadoCivil::create($request->all());
        
        return [ 'msj' => 'Registro Agregado Correctamente', compact('estadoCivil') ];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\EstadoCivil  $estadoCivil
     * @return \Illuminate\Http\Response
     */
    public function show(EstadoCivil $estadoCivil)
    {
        return $estadoCivil;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\EstadoCivil  $estadoCivil
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, EstadoCivil $estadoCivil)
    {
        $validate = request()->validate([
            'nb_estado_civil'      => 'required|max:20',
            'tx_observaciones'     => 'max:100',
            'id_usuario'           => 'required',
            'id_status'            => 'required'
        ]);

        $estadoCivil = $estadoCivil->update($request->all());
        
        return [ 'msj' => 'Registro Editado Correctamente', compact('estadoCivil') ];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\EstadoCivil  $estadoCivil
     * @return \Illuminate\Http\Response
     */
    public function destroy(EstadoCivil $estadoCivil)
    {
        $estadoCivil = $estadoCivil->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('estadoCivil')];
    }
}

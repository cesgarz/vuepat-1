<?php

namespace App\Http\Controllers;

use App\Models\Motivo;
use Illuminate\Http\Request;

class MotivoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $motivo = Motivo::select('id_motivo', 'nb_motivo')
                            ->where('id_status', 1)
                            ->get();
        return $motivo;
    }

    public function lista()
    {
         $mision = Motivo::with('status')
                            ->get(); 
        return $mision;
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
            'nb_motivo'         => 'required|max:50',
            'id_usuario'        => 'required',
            'tx_observaciones'  => 'max:100',
            'id_status'         => 'required'
        ]);

        $motivo = Motivo::create($request->all());
        
        return [ 'msj' => 'Registro Agregado Correctamente', compact('motivo') ];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Motivo  $motivo
     * @return \Illuminate\Http\Response
     */
    public function show(Motivo $motivo)
    {
        return $motivo;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Motivo  $motivo
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Motivo $motivo)
    {
         $validate = request()->validate([
            'nb_motivo'         => 'required|max:50',
            'tx_observaciones'  => 'max:100',
            'id_usuario'        => 'required',
            'id_status'         => 'required'
        ]);

        $motivo = $motivo->update($request->all());
        
        return [ 'msj' => 'Registro Editado Correctamente', compact('motivo') ];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Motivo  $motivo
     * @return \Illuminate\Http\Response
     */
    public function destroy(Motivo $motivo)
    {
        $motivo = $motivo->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('motivo')];
    }
}

<?php

namespace App\Http\Controllers;

use App\Models\Mision;
use Illuminate\Http\Request;

class MisionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
         $mision = Mision::select('id_mision', 'nb_mision')
                            ->where('id_status', 1)
                            ->get(); 
        return $mision;
    }

    public function lista()
    {
         $mision = Mision::with('status')
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
            'nb_mision'         => 'required|max:50',
            'tx_observaciones'  => 'max:100',
            'id_usuario'        => 'required',
            'id_status'         => 'required'
        ]);

        $mision = Mision::create($request->all());
        
        return [ 'msj' => 'Registro Agregado Correctamente', compact('mision') ];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Mision  $mision
     * @return \Illuminate\Http\Response
     */
    public function show(Mision $mision)
    {
        return $mision;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Mision  $mision
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Mision $mision)
    {
        $validate = request()->validate([
            'nb_mision'         => 'required|max:50',
            'tx_observaciones'  => 'max:100',
            'id_usuario'        => 'required',
            'id_status'         => 'required'
        ]);

        $mision = $mision->update($request->all());
        
        return [ 'msj' => 'Registro Editado Correctamente', compact('mision') ];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Mision  $mision
     * @return \Illuminate\Http\Response
     */
    public function destroy(Mision $mision)
    {
        $mision = $mision->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('mision')];
    }
}

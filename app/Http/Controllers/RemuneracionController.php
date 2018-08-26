<?php

namespace App\Http\Controllers;

use App\Models\Remuneracion;
use Illuminate\Http\Request;

class RemuneracionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $remuneracion = Remuneracion::select('id_remuneracion', 'nb_remuneracion')
                                    ->where('id_status', 1)
                                    ->get();
                                    
        return $remuneracion;
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
            'nb_remuneracion'   => 'required|max:50',
            'tx_observaciones'  => 'max:100',
            'id_usuario'        => 'required',
            'id_status'         => 'required'
        ]);

        $remuneracion = Remuneracion::create($request->all());
        
        return [ 'msj' => 'Registro Agregado Correctamente', compact('remuneracion') ];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Remuneracion  $remuneracion
     * @return \Illuminate\Http\Response
     */
    public function show(Remuneracion $remuneracion)
    {
        return $remuneracion;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Remuneracion  $remuneracion
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Remuneracion $remuneracion)
    {
        $validate = request()->validate([
            'nb_remuneracion'   => 'required|max:50',
            'tx_observaciones'  => 'max:100',
            'id_usuario'        => 'required',
            'id_status'         => 'required'
        ]);
        
        $remuneracion = $remuneracion->update($request->all());

        return [ 'msj' => 'Registro Editado' , compact('remuneracion')];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Remuneracion  $remuneracion
     * @return \Illuminate\Http\Response
     */
    public function destroy(Remuneracion $remuneracion)
    {
        $remuneracion = $remuneracion->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('remuneracion')];
    }
}

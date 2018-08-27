<?php

namespace App\Http\Controllers;

use App\Models\Estudio;
use Illuminate\Http\Request;

class EstudioController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $estudio = Estudio::with(['persona', 'nivelEstudio', 'usuario', 'status'])->get();
        return $estudio;
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
            'id_persona'           => 'required',
            'id_nivel_estudio'     => 'required',
            'tx_titulo'            => 'required',
            'tx_observaciones'     => 'max:100',
            'id_usuario'           => 'required',
            'id_status'            => 'required'
        ]);

        $estudio = Estudio::create($request->all());
        
        return [ 'msj' => 'Registro Agregado Correctamente', compact('estudio') ];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Estudio  $estudio
     * @return \Illuminate\Http\Response
     */
    public function show(Estudio $estudio)
    {
        return $estudio;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Estudio  $estudio
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Estudio $estudio)
    {
        $validate = request()->validate([
            'id_persona'           => 'required',
            'id_nivel_estudio'     => 'required',
            'tx_titulo'            => 'required',
            'tx_observaciones'     => 'max:100',
            'id_usuario'           => 'required',
            'id_status'            => 'required'
        ]);

        $estudio = $estudio->update($request->all());
        
        return [ 'msj' => 'Registro Editado Correctamente', compact('estudio') ];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Estudio  $estudio
     * @return \Illuminate\Http\Response
     */
    public function destroy(Estudio $estudio)
    {
        $estudio = $estudio->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('estudio')];
    }
}

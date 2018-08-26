<?php

namespace App\Http\Controllers;

use App\Models\NivelEstudio;
use Illuminate\Http\Request;

class NivelEstudioController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
         $nivelEstudio = NivelEstudio::select('id_nivel_estudio', 'nb_nivel_estudio')
                                    ->where('id_status', 1)
                                    ->get();
        return $nivelEstudio;
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
            'nb_nivel_estudio'      => 'required|max:50',
            'tx_observaciones'      => 'max:100',
            'id_usuario'            => 'required',
            'id_status'             => 'required'
        ]);

        $nivelEstudio = NivelEstudio::create($request->all());
        
        return [ 'msj' => 'Registro Agregado Correctamente', compact('nivelEstudio') ];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\NivelEstudio  $nivelEstudio
     * @return \Illuminate\Http\Response
     */
    public function show(NivelEstudio $nivelEstudio)
    {
        return $nivel_estudio;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\NivelEstudio  $nivelEstudio
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, NivelEstudio $nivelEstudio)
    {
        $validate = request()->validate([
            'nb_nivel_estudio'      => 'required|max:50',
            'tx_observaciones'      => 'max:100',
            'id_usuario'            => 'required',
            'id_status'             => 'required'
        ]);

        $nivelEstudio = $nivelEstudio->update($request->all());
        
        return [ 'msj' => 'Registro Editado Correctamente', compact('nivelEstudio') ];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\NivelEstudio  $nivelEstudio
     * @return \Illuminate\Http\Response
     */
    public function destroy(NivelEstudio $nivelEstudio)
    {
        $nivelEstudio = $nivelEstudio->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('nivelEstudio')];
    }
}

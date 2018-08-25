<?php

namespace App\Http\Controllers;

use App\Models\GrupoMigracion;
use Illuminate\Http\Request;

class GrupoMigracionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $grupoMigracion = GrupoMigracion::with(['usuario', 'status'])->get();
        return $grupoMigracion;
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
            'nb_grupo_migracion'   => 'required|max:50',
            'tx_observaciones'     => 'max:100',
            'id_usuario'           => 'required',
            'id_status'            => 'required'
        ]);

        $grupoMigracion = GrupoMigracion::create($request->all());
        
        return [ 'msj' => 'Registro Agregado Correctamente', compact('grupoMigracion') ];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\GrupoMigracion  $grupoMigracion
     * @return \Illuminate\Http\Response
     */
    public function show(GrupoMigracion $grupoMigracion)
    {
        return $grupoMigracion;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\GrupoMigracion  $grupoMigracion
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, GrupoMigracion $grupoMigracion)
    {
         $validate = request()->validate([
            'nb_grupo_migracion'   => 'required|max:50',
            'tx_observaciones'     => 'max:100',
            'id_usuario'           => 'required',
            'id_status'            => 'required'
        ]);

        $grupoMigracion = $grupoMigracion->update($request->all());
        
        return [ 'msj' => 'Registro Editado Correctamente', compact('grupoMigracion') ];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\GrupoMigracion  $grupoMigracion
     * @return \Illuminate\Http\Response
     */
    public function destroy(GrupoMigracion $grupoMigracion)
    {
        $grupoMigracion = $grupoMigracion->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('grupoMigracion')];
    }
}

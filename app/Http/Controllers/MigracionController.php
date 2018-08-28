<?php

namespace App\Http\Controllers;

use App\Models\Migracion;
use Illuminate\Http\Request;

class MigracionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $migracion = Migracion::with(['persona', 'motivo', 'recurso', 'grupoMigracion', 'transporte', 'usuario', 'status'])->get();
        return $migracion;
    }

    public function migracionUsuario($id_usuario)
    {
        $empleo = Migracion::with(['status'])
                            ->where('id_usuario', $id_usuario)
                            ->first();
        return $empleo;
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
            'id_motivo'            => 'required',
            'tx_motivo'            => 'max:50',
            'id_recurso'           => 'required',
            'tx_recurso'           => 'max:50',
            'id_grupo_migracion'   => 'required',
            'tx_grupo_migracion'   => 'max:50',
            'id_transporte'        => 'required',
            'fe_salida'            => 'required|date',
            'tx_observaciones'     => 'max:100',
            'id_usuario'           => 'required',
            'id_status'            => 'required'
        ]);

        $migracion = Migracion::create($request->all());
        
        return [ 'msj' => 'Registro Agregado Correctamente', compact('migracion') ];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Migracion  $migracion
     * @return \Illuminate\Http\Response
     */
    public function show(Migracion $migracion)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Migracion  $migracion
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Migracion $migracion)
    {
        $validate = request()->validate([
            'id_motivo'            => 'required',
            'tx_motivo'            => 'max:50',
            'id_recurso'           => 'required',
            'tx_recurso'           => 'max:50',
            'id_grupo_migracion'   => 'required',
            'tx_grupo_migracion'   => 'max:50',
            'id_transporte'        => 'required',
            'fe_salida'            => 'required|date',
            'tx_observaciones'     => 'max:100',
            'id_usuario'           => 'required',
            'id_status'            => 'required'
        ]);

        $migracion = $migracion->update($request->all());
        
        return [ 'msj' => 'Registro Editado Correctamente', compact('migracion') ];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Migracion  $migracion
     * @return \Illuminate\Http\Response
     */
    public function destroy(Migracion $migracion)
    {
         $migracion = $migracion->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('migracion')];
    }
}

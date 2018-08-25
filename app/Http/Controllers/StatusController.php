<?php

namespace App\Http\Controllers;

use App\Models\Status;
use Illuminate\Http\Request;

class StatusController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $status = Status::with(['usuario', 'persona', 'estadoCivil','usuarioPersona', 'tipoPersona', 'discapacidad', 'tipoDiscapacidad', 'personaDiscapacidad', 'parentesco', 'mision', 'personaMision', 'nivelEstudio', 'estudio', 'empleo', 'tipoCargo', 'migracion', 'motivo', 'recurso', 'grupoMigracion', 'transporte', 'sector', 'personaEmpresa', 'jornada', 'remuneracion', 'moneda', 'vivienda', 'ubicacion', 'tipoVivienda', 'servicio', 'viviendaServicio', 'pais', 'estado', 'ciudad', 'rol', 'rolUsuario', 'rolMenu', 'menu', 'usuario', 'status'])->get();
        
        return $status;
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
            'nb_status'         => 'required|max:50',
            'nb_secundario'     => 'required|max:50',
            'nb_grupo'          => 'required|max:15',
            'bo_activo'         => 'required|boolean',
            'id_padre'          => 'required',
            'nu_orden'          => 'required|numeric',
            'tx_observaciones'  => 'max:100',
            'id_usuario'        => 'required',
            'id_status'         => 'required'
        ]);

        $status = Status::create($request->all());
        
        return [ 'msj' => 'Registro Agregado Correctamente', compact('status') ];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Status  $status
     * @return \Illuminate\Http\Response
     */
    public function show(Status $status)
    {
        return $status;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Status  $status
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Status $status)
    {
        $validate = request()->validate([
            'nb_status'         => 'required|max:50',
            'nb_secundario'     => 'required|max:50',
            'nb_grupo'          => 'required|max:15',
            'bo_activo'         => 'required|boolean',
            'id_padre'          => 'required',
            'nu_orden'          => 'required|numeric',
            'tx_observaciones'  => 'max:100',
            'id_usuario'        => 'required',
            'id_status'         => 'required'
        ]);
        
        $status = $status->update($request->all());

        return [ 'msj' => 'Registro Editado' , compact('status')];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Status  $status
     * @return \Illuminate\Http\Response
     */
    public function destroy(Status $status)
    {
        $status = $status->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('status')];
    }
}

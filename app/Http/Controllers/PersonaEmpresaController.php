<?php

namespace App\Http\Controllers;

use App\Models\PersonaEmpresa;
use Illuminate\Http\Request;

class PersonaEmpresaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $personaEmpresa = PersonaEmpresa::with(['persona', 'usuario', 'status'])->get();
        return $personaEmpresa;
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
            'tx_empresa'           => 'required|max:100',
            'tx_observaciones'     => 'max:100',
            'id_usuario'           => 'required',
            'id_status'            => 'required'
        ]);

        $personaEmpresa = PersonaEmpresa::create($request->all());
        
        return [ 'msj' => 'Registro Agregado Correctamente', compact('personaEmpresa') ];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\PersonaEmpresa  $personaEmpresa
     * @return \Illuminate\Http\Response
     */
    public function show(PersonaEmpresa $personaEmpresa)
    {
        return $personaEmpresa;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\PersonaEmpresa  $personaEmpresa
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, PersonaEmpresa $personaEmpresa)
    {
        $validate = request()->validate([
            'id_persona'           => 'required',
            'tx_empresa'           => 'required|max:100',
            'tx_observaciones'     => 'max:100',
            'id_usuario'           => 'required',
            'id_status'            => 'required'
        ]);

        $personaEmpresa = $personaEmpresa->create($request->all());
        
        return [ 'msj' => 'Registro Agregado Correctamente', compact('personaEmpresa') ];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\PersonaEmpresa  $personaEmpresa
     * @return \Illuminate\Http\Response
     */
    public function destroy(PersonaEmpresa $personaEmpresa)
    {
        $personaEmpresa = $personaEmpresa->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('personaEmpresa')];
    }
}

<?php

namespace App\Http\Controllers;

use App\Models\PersonaDiscapacidad;
use Illuminate\Http\Request;

class PersonaDiscapacidadController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $personaDiscapacidad = PersonaDiscapacidad::with([
            'persona', 'discapacidad', 'usuario', 'status'])->get();
        return $personaDiscapacidad;
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
            'id_discapacidad'      => 'required',
            'tx_observaciones'     => 'max:100',
            'id_usuario'           => 'required',
            'id_status'            => 'required'
        ]);

        $personaDiscapacidad = PersonaDiscapacidad::create($request->all());
        
        return [ 'msj' => 'Registro Agregado Correctamente', compact('personaDiscapacidad') ];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\PersonaDiscapacidad  $personaDiscapacidad
     * @return \Illuminate\Http\Response
     */
    public function show(PersonaDiscapacidad $personaDiscapacidad)
    {
        return $personaDiscapacidad;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\PersonaDiscapacidad  $personaDiscapacidad
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, PersonaDiscapacidad $personaDiscapacidad)
    {
        $validate = request()->validate([
            'id_persona'           => 'required',
            'id_discapacidad'      => 'required',
            'tx_observaciones'     => 'max:100',
            'id_usuario'           => 'required',
            'id_status'            => 'required'
        ]);

        $personaDiscapacidad = $personaDiscapacidad->update($request->all());
        
        return [ 'msj' => 'Registro Editado Correctamente', compact('personaDiscapacidad') ];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\PersonaDiscapacidad  $personaDiscapacidad
     * @return \Illuminate\Http\Response
     */
    public function destroy(PersonaDiscapacidad $personaDiscapacidad)
    {
        $personaDiscapacidad = $personaDiscapacidad->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('personaDiscapacidad')];
    }
}

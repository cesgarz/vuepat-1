<?php

namespace App\Http\Controllers;

use App\Models\PersonaEmpleo;
use App\Models\Persona;
use Illuminate\Http\Request;

class PersonaEmpleoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $personaEmpleo = PersonaEmpleo::with(['persona'])->get();
        return $personaEmpleo;
    }

    public function personaEmpleoUsuario($id_usuario)
    {
        $empleos = PersonaEmpleo::where('id_usuario', $id_usuario)->get();
        return $empleos;
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
            'tx_empresa'       => 'required|max:100|min:3',
            'tx_cargo'         => 'required|max:100|min:3',
            'nu_tiempo'        => 'required|integer',
            'id_periodo'       => 'required',
            'tx_observaciones' => 'max:100',
            'id_status'        => 'required',
            'id_usuario'       => 'required'
        ]);

        $persona = Persona::where('id_usuario'   , $request->id_usuario)
                          ->where('id_parentesco',  99)
                          ->first();

        $validate['id_persona'] = $persona->id_persona; 

        $personaEmpleo = PersonaEmpleo::create($validate);
        
        return [ 'msj' => 'Registro Agregado Correctamente', compact('personaEmpleo') ];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\PersonaEmpleo  $personaEmpleo
     * @return \Illuminate\Http\Response
     */
    public function show(PersonaEmpleo $personaEmpleo)
    {
        //
    }

   

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\PersonaEmpleo  $personaEmpleo
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, PersonaEmpleo $personaEmpleo)
    {
        $validate = request()->validate([
            'id_persona'       => 'required',
            'tx_empresa'       => 'required|max:100|min:3',
            'tx_cargo'         => 'required|max:100|min:3',
            'nu_tiempo'        => 'required|integer',
            'id_periodo'       => 'required',
            'tx_observaciones' => 'max:100',
            'id_status'        => 'required',
            'id_usuario'       => 'required'
        ]);

        $personaEmpleo = $personaEmpleo->update($request->all());
        
        return [ 'msj' => 'Registro Editado Correctamente', compact('personaEmpleo') ];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\PersonaEmpleo  $personaEmpleo
     * @return \Illuminate\Http\Response
     */
    public function destroy(PersonaEmpleo $personaEmpleo)
    {
        $personaEmpleo = $personaEmpleo->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('personaEmpleo')];
    }
}

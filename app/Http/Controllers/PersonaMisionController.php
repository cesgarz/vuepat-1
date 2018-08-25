<?php

namespace App\Http\Controllers;

use App\Models\PersonaMision;
use Illuminate\Http\Request;

class PersonaMisionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $personaMision = PersonaMision::with(['persona', 'mision', 'usuario', 'status'])->get();
        return $personaMision;
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
            'id_mision'            => 'required',
            'tx_observaciones'     => 'max:100',
            'id_usuario'           => 'required',
            'id_status'            => 'required'
        ]);

        $personaMision = PersonaMision::create($request->all());
        
        return [ 'msj' => 'Registro Agregado Correctamente', compact('personaMision') ];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\PersonaMision  $personaMision
     * @return \Illuminate\Http\Response
     */
    public function show(PersonaMision $personaMision)
    {
        return $personaMision;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\PersonaMision  $personaMision
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, PersonaMision $personaMision)
    {
        $validate = request()->validate([
            'id_persona'           => 'required',
            'id_mision'            => 'required',
            'tx_observaciones'     => 'max:100',
            'id_usuario'           => 'required',
            'id_status'            => 'required'
        ]);

        $personaMision = $personaMision->update($request->all());
        
        return [ 'msj' => 'Registro Editado Correctamente', compact('personaMision') ];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\PersonaMision  $personaMision
     * @return \Illuminate\Http\Response
     */
    public function destroy(PersonaMision $personaMision)
    {
        $personaMision = $personaMision->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('personaMision')];
    }
}

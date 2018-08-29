<?php

namespace App\Http\Controllers;

use App\Models\Discapacidad;
use Illuminate\Http\Request;

class DiscapacidadController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $discapacidad = Discapacidad::with(['usuario', 'status'])->get();
        return $discapacidad;
    }

    public function discapacidadTipo($id_tipo_discapacidad)
    {
        $vivienda = Discapacidad::select('id_discapacidad','nb_discapacidad')
                             ->where('id_tipo_discapacidad', $id_tipo_discapacidad)
                             ->get();
        return $vivienda;
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
            'nb_discapacidad'      => 'required|max:50',
            'id_tipo_discapacidad' => 'required',
            'tx_observaciones'     => 'max:100',
            'id_usuario'           => 'required',
            'id_status'            => 'required'
        ]);

        $discapacidad = Discapacidad::create($request->all());
        
        return [ 'msj' => 'Registro Agregado Correctamente', compact('discapacidad') ];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Discapacidad  $discapacidad
     * @return \Illuminate\Http\Response
     */
    public function show(Discapacidad $discapacidad)
    {
        return $discapacidad;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Discapacidad  $discapacidad
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Discapacidad $discapacidad)
    {
        $validate = request()->validate([
            'nb_discapacidad'      => 'required|max:50',
            'id_tipo_discapacidad' => 'required',
            'tx_observaciones'     => 'max:100',
            'id_usuario'           => 'required',
            'id_status'            => 'required'
        ]);

        $discapacidad = $discapacidad->update($request->all());
        
        return [ 'msj' => 'Registro Editado Correctamente', compact('discapacidad') ];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Discapacidad  $discapacidad
     * @return \Illuminate\Http\Response
     */
    public function destroy(Discapacidad $discapacidad)
    {
        $discapacidad = $discapacidad->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('discapacidad')];
    }
}

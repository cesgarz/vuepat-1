<?php

namespace App\Http\Controllers;

use App\Models\Jornada;
use Illuminate\Http\Request;

class JornadaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $jornada = Jornada::select('id_jornada', 'nb_jornada')
                            ->where('id_status', 1)
                            ->get();

        return $jornada;
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
            'nb_jornada'        => 'required|max:50',
            'tx_observaciones'  => 'max:100',
            'id_usuario'        => 'required',
            'id_status'         => 'required'
        ]);

        $jornada = Jornada::create($request->all());
        
        return [ 'msj' => 'Registro Agregado Correctamente', compact('jornada') ];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Jornada  $jornada
     * @return \Illuminate\Http\Response
     */
    public function show(Jornada $jornada)
    {
        return $jornada;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Jornada  $jornada
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Jornada $jornada)
    {
        $validate = request()->validate([
            'nb_jornada'        => 'required|max:50',
            'tx_observaciones'  => 'max:100',
            'id_usuario'        => 'required',
            'id_status'         => 'required'
        ]);

        $jornada = $jornada->update($request->all());
        
        return [ 'msj' => 'Registro Editado Correctamente', compact('jornada') ];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Jornada  $jornada
     * @return \Illuminate\Http\Response
     */
    public function destroy(Jornada $jornada)
    {
        $jornada = $jornada->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('jornada')];
    }
}

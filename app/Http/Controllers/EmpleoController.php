<?php

namespace App\Http\Controllers;

use App\Models\Empleo;
use Illuminate\Http\Request;
use \App\Models\Persona;
use \App\Models\Estudio;

class EmpleoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $empleo = Empleo::with(['persona', 'tipo_cargo', 'jornada', 'remuneracion', 'moneda', 'usuario', 'status'])->get();
        return $empleo;
    }

    public function empleoUsuario($id_usuario)
    {
        $empleo = Empleo::with(['estudio:id_estudio,id_usuario,id_nivel_estudio,tx_titulo'])
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
            'tx_empresa'        => 'required|max:100',
            'id_sector'         => 'required',
            'id_tipo_cargo'     => 'required',
            'tx_cargo'          => 'required|max:100',
            'id_jornada'        => 'required',
            'id_remuneracion'   => 'required', 
            'id_moneda'         => 'integer|nullable',
            'mo_remuneracion'   => 'nullable|numeric|min:1',
            'bo_empresa_propia' => 'nullable|boolean',
            'nb_empresa_propia' => 'max:100',
            'tx_observaciones'  => 'max:100', 
            'id_status'         => 'required',
            'id_usuario'        => 'required',
            'id_nivel_estudio'  => 'required',
            'tx_titulo'         => 'required|max:50'
        ]);

        $empleo = Empleo::create($request->all());

        $estudio = $this->storeEstudio($request);
        
        return [ 'msj' => 'Registro Agregado Correctamente', compact('empleo', 'estudio') ];
    }

    public function storeEstudio($request)
    {
        $persona = Persona::where('id_usuario'   , $request->id_usuario)
                          ->where('id_parentesco',  99)
                          ->first();
        
        $datos = [
        'id_persona'           => $persona->id_persona,
        'id_nivel_estudio'     => $request->id_nivel_estudio,
        'tx_titulo'            => $request->tx_titulo,
        'id_usuario'           => $request->id_usuario,
        'id_status'            => $request->id_status
        ];

        $estudio = Estudio::create($datos);

        return $estudio;
    }

    public function updateEstudio($request)
    {
        
        $datos = [
        'id_nivel_estudio'     => $request->id_nivel_estudio,
        'tx_titulo'            => $request->tx_titulo,
        ];

        $estudio = Estudio::where('id_usuario', $request->id_usuario)->update($datos);

        return $estudio;
    }



    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Empleo  $empleo
     * @return \Illuminate\Http\Response
     */
    public function show(Empleo $empleo)
    {
        return $empleo;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Empleo  $empleo
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Empleo $empleo)
    {
        $validate = request()->validate([
            'tx_empresa'        => 'required|max:100',
            'id_sector'         => 'required',
            'id_tipo_cargo'     => 'required',
            'tx_cargo'          => 'required|max:100',
            'id_jornada'        => 'required',
            'id_remuneracion'   => 'required', 
            'id_moneda'         => 'integer|nullable',
            'mo_remuneracion'   => 'nullable|numeric|min:1',
            'bo_empresa_propia' => 'nullable|boolean',
            'nb_empresa_propia' => 'max:100',
            'tx_observaciones'  => 'max:100', 
            'id_status'         => 'required',
            'id_usuario'        => 'required',
            'id_nivel_estudio'  => 'required',
            'tx_titulo'         => 'required|max:50'
        ]);

        $empleo = $empleo->update($request->all());
        $estudio = $this->updateEstudio($request);
        
        return [ 'msj' => 'Registro Editado Correctamente', compact('empleo', 'estudio') ];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Empleo  $empleo
     * @return \Illuminate\Http\Response
     */
    public function destroy(Empleo $empleo)
    {
        $empleo  = $empleo->delete();
        $estudio = Estudio::where('id_usuario', $empleo->id_usuario)->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('empleo')];
    }
}

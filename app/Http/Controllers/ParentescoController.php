<?php

namespace App\Http\Controllers;

use App\Models\Parentesco;
use Illuminate\Http\Request;

class ParentescoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $parentesco = Parentesco::select('id_parentesco', 'nb_parentesco')
                                ->where('id_status', 1)
                                ->orderBy('id_parentesco')
                                ->get(); 
        return $parentesco;
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
            'nb_parentesco'      => 'required|max:20',
            'tx_observaciones'   => 'max:100',
            'id_usuario'         => 'required',
            'id_status'          => 'required'
        ]);

        $parentesco = Parentesco::create($request->all());
        
        return [ 'msj' => 'Registro Agregado Correctamente', compact('parentesco') ];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Parentesco  $parentesco
     * @return \Illuminate\Http\Response
     */
    public function show(Parentesco $parentesco)
    {
        return $parentesco;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Parentesco  $parentesco
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Parentesco $parentesco)
    {
         $validate = request()->validate([
            'nb_parentesco'      => 'required|max:20',
            'tx_observaciones'   => 'max:100',
            'id_usuario'         => 'required',
            'id_status'          => 'required'
        ]);

        $parentesco = $parentesco->update($request->all());
        
        return [ 'msj' => 'Registro Editado Correctamente', compact('parentesco') ];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Parentesco  $parentesco
     * @return \Illuminate\Http\Response
     */
    public function destroy(Parentesco $parentesco)
    {
        $parentesco = $parentesco->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('parentesco')];
    }
}

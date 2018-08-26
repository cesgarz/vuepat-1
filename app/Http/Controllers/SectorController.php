<?php

namespace App\Http\Controllers;

use App\Models\Sector;
use Illuminate\Http\Request;

class SectorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $sectores = Sector::select('id_sector', 'nb_sector')
                            ->where('id_status', 1)
                            ->get();
                            
        return $sectores;
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
            'nb_sector'         => 'required|max:50',
            'tx_observaciones'  => 'max:100',
            'id_usuario'        => 'required',
            'id_status'         => 'required'
        ]);

        $sector = Sector::create($request->all());
        
        return [ 'msj' => 'Registro Agregado Correctamente', compact('sector') ];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Sector  $sector
     * @return \Illuminate\Http\Response
     */
    public function show(Sector $sector)
    {
        return $sector;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Sector  $sector
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Sector $sector)
    {
        $validate = request()->validate([
            'nb_sector'         => 'required|max:50',
            'tx_observaciones'  => 'max:100',
            'id_usuario'        => 'required',
            'id_status'         => 'required'
        ]);
        
        $sector = $sector->update($request->all());

        return [ 'msj' => 'Registro Editado' , compact('sector')];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Sector  $sector
     * @return \Illuminate\Http\Response
     */
    public function destroy(Sector $sector)
    {
        $sector = $sector->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('sector')];
    }
}

<?php

namespace App\Http\Controllers;

use App\Models\Vivienda;
use Illuminate\Http\Request;

class ViviendaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $vivienda = Vivienda::with(['persona', 'ubicacion', 'tipoVivienda', 'pais', 'estado', 'ciudad', 'usuario', 'status'])->get();
        
        return $vivienda;
    }

    public function viviendaUsuario($id_usuario)
    {
        $vivienda = Vivienda::with(['viviendaServicio'])
                             ->where('id_usuario', $id_usuario)
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
        $vivienda = [];

       // \DB::transaction(function () {
            
            foreach ($request->all() as $key => $value) {
            
                $validate = request()->validate([
                    $key.'.id_ubicacion'      => 'required',
                    $key.'.id_tipo_vivienda'  => 'required',
                    $key.'.co_pais'           => 'required|max:2',
                    $key.'.nb_estado'         => 'max:100',
                    $key.'.nb_ciudad'         => 'max:100',
                    $key.'.tx_calle'          => 'required|max:100',
                    $key.'.tx_casa'           => 'required|max:100',
                    $key.'.tx_telefono'       => 'max:20',
                    $key.'.nu_personas'       => 'required|numeric',
                    $key.'.tx_observaciones'  => 'max:100',
                    $key.'.id_usuario'        => 'required',
                    $key.'.id_status'         => 'required'
                ]);
    
                $vivienda[] = Vivienda::create($validate[$key]);
            }

       // }); 

        return [ 'msj' => 'Registro Agregado Correctamente', compact('vivienda') ];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Vivienda  $vivienda
     * @return \Illuminate\Http\Response
     */
    public function show(Vivienda $vivienda)
    {
        return $vivienda;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Vivienda  $vivienda
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $vivienda = [];

        // \DB::transaction(function () {
             
             foreach ($request->all() as $key => $value) {
             
                 $validate = request()->validate([
                     $key.'.id_ubicacion'      => 'required',
                     $key.'.id_tipo_vivienda'  => 'required',
                     $key.'.co_pais'           => 'required|max:2',
                     $key.'.nb_estado'         => 'max:100',
                     $key.'.nb_ciudad'         => 'max:100',
                     $key.'.tx_calle'          => 'required|max:100',
                     $key.'.tx_casa'           => 'required|max:100',
                     $key.'.tx_telefono'       => 'max:20',
                     $key.'.nu_personas'       => 'required|numeric',
                     $key.'.tx_observaciones'  => 'max:100',
                     $key.'.id_usuario'        => 'required',
                     $key.'.id_status'         => 'required'
                 ]);
                
                 $vivienda[] = Vivienda::find($validate[$key]['id_vivienda'])->update($validate[$key]);

             }
        
        return [ 'msj' => 'Registro Editado' , compact('vivienda')];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Vivienda  $vivienda
     * @return \Illuminate\Http\Response
     */
    public function destroy(Vivienda $vivienda)
    {
        $vivienda = $vivienda->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('vivienda')];
    }
}

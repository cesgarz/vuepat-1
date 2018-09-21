<?php

namespace App\Http\Controllers;

use App\Models\Rol;
use Illuminate\Http\Request;

class RolController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $roles = Rol::with(['usuario', 'status'])->get();
        
        return $roles;
    }

    public function roles()
    {
        $roles = Rol::select('id_rol', 'nb_rol')
                    ->where('id_status', 1)
                    ->get();
        
        return $roles;
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
            'nb_rol'            => 'required|max:20',
            'tx_observaciones'  => 'max:100',
            'id_usuario'        => 'required',
            'id_status'         => 'required'
        ]);

        $rol = Rol::create($request->all());
        
        return [ 'msj' => 'Registro Agregado Correctamente', compact('rol') ];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Rol  $rol
     * @return \Illuminate\Http\Response
     */
    public function show(Rol $rol)
    {
        return $rol;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Rol  $rol
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Rol $rol)
    {
        $validate = request()->validate([
            'nb_rol'            => 'required|max:20',
            'tx_observaciones'  => 'max:100',
            'id_usuario'        => 'required',
            'id_status'         => 'required'
        ]);

        $rol = $rol->update($request->all());
        
        return [ 'msj' => 'Registro Editado Correctamente', compact('rol') ];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Rol  $rol
     * @return \Illuminate\Http\Response
     */
    public function destroy(Rol $rol)
    {
        $rol = $rol->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('rol')];
    }
}

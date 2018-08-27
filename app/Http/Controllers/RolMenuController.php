<?php

namespace App\Http\Controllers;

use App\Models\RolMenu;
use Illuminate\Http\Request;

class RolMenuController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $rolesMenu = RolMenu::with(['rol', 'menu', 'usuario', 'status'])->get();
        
        return $rolesMenu;
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
            'id_rol'            => 'required',              
            'id_menu'           => 'required',
            'tx_observaciones'  => 'max:100',
            'id_usuario'        => 'required',
            'id_status'         => 'required'
        ]);

        $rolMenu = RolMenu::create($request->all());
        
        return [ 'msj' => 'Registro Agregado Correctamente', compact('rolMenu') ];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\RolMenu  $rolMenu
     * @return \Illuminate\Http\Response
     */
    public function show(RolMenu $rolMenu)
    {
        return $rolMenu;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\RolMenu  $rolMenu
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, RolMenu $rolMenu)
    {
        $validate = request()->validate([
            'id_rol'            => 'required',              
            'id_menu'           => 'required',
            'tx_observaciones'  => 'max:100',
            'id_usuario'        => 'required',
            'id_status'         => 'required'
        ]);
        
        $rolMenu = $rolMenu->update($request->all());

        return [ 'msj' => 'Registro Editado' , compact('rolMenu')];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\RolMenu  $rolMenu
     * @return \Illuminate\Http\Response
     */
    public function destroy(RolMenu $rolMenu)
    {
        $rolMenu = $rolMenu->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('rolMenu')];
    }
}

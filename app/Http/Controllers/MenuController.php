<?php

namespace App\Http\Controllers;

use App\Models\Menu;
use Illuminate\Http\Request;

class MenuController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
         $menus = Menu::with(['usuario', 'status'])->get();
        
        return $menus;
    }


    public function menuPadre()
    {
        $status = Status::select('id_menu' , 'nb_menu')
                          ->where('status', 1)
                          ->get();
        
        return $status;
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
            'nb_menu'           => 'required|max:20',
            'nb_icon'           => 'required|max:20', 
            'tx_ruta'           => 'required|max:20',
            'id_padre'          => 'required', 
            'tx_observaciones'  => 'max:100',
            'id_usuario'        => 'required',
            'id_status'         => 'required'
        ]);

        $menu = Menu::create($request->all());
        
        return [ 'msj' => 'Registro Agregado Correctamente', compact('menu') ];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Menu  $menu
     * @return \Illuminate\Http\Response
     */
    public function show(Menu $menu)
    {
        return $menu;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Menu  $menu
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Menu $menu)
    {
        $validate = request()->validate([
            'nb_menu'           => 'required|max:20',
            'nb_icon'           => 'required|max:20', 
            'tx_ruta'           => 'required|max:20',
            'id_padre'          => 'required', 
            'tx_observaciones'  => 'max:100',
            'id_usuario'        => 'required',
            'id_status'         => 'required'
        ]);

        $menu = $menu->update($request->all());
        
        return [ 'msj' => 'Registro Editado Correctamente', compact('menu') ];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Menu  $menu
     * @return \Illuminate\Http\Response
     */
    public function destroy(Menu $menu)
    {
        $menu = $menu->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('menu')];
    }
}

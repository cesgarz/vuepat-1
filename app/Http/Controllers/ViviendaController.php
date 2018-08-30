<?php

namespace App\Http\Controllers;

use App\Models\Vivienda;
use Illuminate\Http\Request;
use \App\Models\ViviendaServicio;

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
        $vivienda = Vivienda::with(['viviendaServicio:id_vivienda,id_servicio'])
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
        $vivienda  = [];
        $servicios = [];
        $objVivienda   = null;
            
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

            $objVivienda = Vivienda::create($validate[$key]);

            if( $key == 'nac' &&  count( $validate[$key]['servicios'] ) > 0  )
            {
                $servicios = $this->storeServicios($validate[$key]['servicios'], $objVivienda);

                $objVivienda['servicios'] = $servicios;
            }

            $vivienda[] = $objVivienda;
        }

        return [ 'msj' => 'Registro Agregado Correctamente', compact('vivienda') ];
    }


    public function storeServicios($servicios, $vivienda)
    {
       
       $viviendaServicio = [];

       ViviendaServicio::where('id_vivienda', $vivienda->id_vivienda)->delete();

       foreach ($servicios as $key => $servicio) {
           
           $datos = [
               'id_vivienda'          => $vivienda->id_vivienda,
               'id_servicio'          => $servicio,
               'id_usuario'           => $vivienda->id_usuario,
               'id_status'            => $vivienda->id_status
               ];

           $viviendaServicio[] = ViviendaServicio::updateOrCreate($datos);
           
       }

       return $viviendaServicio;
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
        $objVivienda = null;
             
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

            $objVivienda = Vivienda::find($validate[$key]['id_vivienda']);
        
            if( $key == 'nac' &&  count( $validate[$key]['servicios'] ) > 0  )
            {
                $servicios = $this->storeServicios($validate[$key]['servicios'], $objVivienda);
            }
            elseif ($key == 'nac' &&  count( $validate[$key]['servicios'] ) == 0)
            {
                ViviendaServicio::where('id_vivienda', $objVivienda->id_vivienda)->delete();
            }
            
            $vivienda[] = $objVivienda->update($validate[$key]);

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

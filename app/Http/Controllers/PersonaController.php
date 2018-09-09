<?php

namespace App\Http\Controllers;

use App\Models\Persona;
use App\Models\PersonaMision;
use App\Models\PersonaDiscapacidad;
use Illuminate\Http\Request;

class PersonaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $persona = Persona::with(['estadoCivil', 'usuario', 'status'])->get();
        return $persona;
    }

    public function personaFamiliar($id_persona)
    {
        $persona = Persona::with(['personaDiscapacidad', 
                                  'parentesco:id_parentesco,nb_parentesco', 
                                  'personaMision:id_persona_mision,id_mision,id_persona'
                                ])
                                ->where('id_usuario',  $id_persona)
                                ->where('id_parentesco', '<>',  99)
                                ->get();
        return $persona;
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
            'nb_nombre'         => 'required|max:50|min:2',
            'nb_apellido'       => 'required|max:50|min:2',
            'tx_cedula'         => 'required|unique:persona,tx_cedula|regex:^([VE]{1})([0-9]{7,9})$^',
            'bo_pasaporte'      => 'required|boolean',
            'nu_pasaporte'      => 'nullable|digits:9',
            'fe_pasaporte'      => 'nullable|date',
            'id_ubicacion'      => 'nullable|integer',
            'tx_sexo'           => 'required|max:1',
            'fe_nacimiento'     => 'required|date',
            'id_parentesco'     => 'required|integer',
            'id_estado_civil'   => 'required|integer',
            'tx_telefono'       => 'max:20',
            'tx_celular'        => 'max:20',
            'bo_enfermedad'     => 'required|boolean',
            'tx_enfermedad'     => 'nullable|max:100',
            'tx_observaciones'  => 'max:100',
            'id_usuario'        => 'required|integer',
            'id_status'         => 'required|integer'
        ],
        [
            'tx_cedula.unique'   => 'Ya existe la cedula en nuestros Registros',
            'tx_cedula.regex'    => 'Cedula inválidad favor corregir Ej V13479149'
        ]);
        
        $persona = Persona::create($request->all());

     
        if($request->filled('misiones'))
        {
            $misiones = $this->storeMisiones($request, $persona->id_persona);
        }
        

        if($request->bo_discapacidad)
        {
            $discapacidad = $this->storeDiscapacidad($request,  $persona->id_persona);
        }
        
        return [ 'msj' => 'Registro Agregado Correctamente', compact('persona', 'misiones', 'discapacidad') ];
    }

    public function storeMisiones($request, $id_persona)
    {
        $personaMision = [];

        PersonaMision::where('id_persona', $id_persona)->delete();

        foreach ($request->misiones as $key => $value) {
            
            $datos = [
                'id_persona'           => $id_persona,
                'id_mision'            => $value,
                'id_usuario'           => $request->id_usuario,
                'id_status'            => $request->id_status
                ];

            $personaMision[] = PersonaMision::updateOrCreate($datos);
            
        }

        return $personaMision;
    }

    public function storeDiscapacidad($request, $id_persona)
    {
        PersonaDiscapacidad::where('id_persona', $id_persona)->delete();
        
        $datos = [
            'id_persona'           => $id_persona,
            'bo_discapacidad'      => $request->bo_discapacidad,
            'id_tipo_discapacidad' => $request->id_tipo_discapacidad,
            'id_discapacidad'      => $request->id_discapacidad,
            'tx_discapacidad'      => $request->tx_discapacidad,
            'id_usuario'           => $request->id_usuario,
            'id_status'            => $request->id_status
        ];
        
        $personaDiscapacidad = PersonaDiscapacidad::updateOrCreate($datos);

        return $personaDiscapacidad;
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Persona  $persona
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $persona = Persona::with(['personaDiscapacidad'])
                          ->where('id_usuario'   , $id)
                          ->where('id_parentesco',  99)
                          ->first();
        return $persona;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Persona  $persona
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Persona $persona)
    {
        $validate = request()->validate([
            'nb_nombre'         => 'required|max:50',
            'nb_apellido'       => 'required|max:50',
            'tx_cedula'         => 'required|regex:^([VE]{1})([0-9]{7,9})$^',
            'bo_pasaporte'      => 'required|boolean',
            'nu_pasaporte'      => 'nullable|digits:9',
            'fe_pasaporte'      => 'nullable|date',
            'id_ubicacion'      => 'nullable|integer',
            'tx_sexo'           => 'required|max:1',
            'fe_nacimiento'     => 'required|date',
            'id_parentesco'     => 'required|integer',
            'id_estado_civil'   => 'required|integer',
            'tx_telefono'       => 'max:20',
            'tx_celular'        => 'max:20',
            'bo_enfermedad'     => 'required|boolean',
            'tx_enfermedad'     => 'nullable|max:100',
            'tx_observaciones'  => 'max:100',
            'id_usuario'        => 'required|integer',
            'id_status'         => 'required|integer'
        ]);

        if( $request->filled('misiones'))
        {
            $misiones = $this->storeMisiones($request, $persona->id_persona);
        }
        else
        {
            PersonaMision::where('id_persona', $persona->id_persona)->delete();
        }
    
        if($request->bo_discapacidad)
        {
            $discapacidad = $this->storeDiscapacidad($request,  $persona->id_persona);
        }
        else
        {
            PersonaDiscapacidad::where('id_persona', $persona->id_persona)->delete();
        }

        $persona = $persona->update($request->all());
        
        return [ 'msj' => 'Registro Editado Correctamente', compact('persona') ];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Persona  $persona
     * @return \Illuminate\Http\Response
     */
    public function destroy(Persona $persona)
    {
        PersonaDiscapacidad::where('id_persona', $persona->id_persona)->delete();
        PersonaMision::where('id_persona', $persona->id_persona)->delete();
        $persona = $persona->delete();
 
        return [ 'msj' => 'Registro Eliminado' , compact('persona')];
    }
}

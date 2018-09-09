<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \App\Models\Persona;
use \App\Models\Vivienda;
use \App\Models\PersonaDiscapacidad;
use \App\Models\Auth\Usuario;


class HomeController extends Controller
{
    public function data()
    {
        $usuario      = \DB::select( \DB::raw(
                                    "SELECT TO_CHAR(date_trunc('day',usu.fe_creado), 'DD/MM/YYYY)') AS fe_creado, 
                                            COUNT(usu.id_usuario) AS nu_cantidad  
                                       FROM usuario usu
                                   GROUP BY (date_trunc('day',usu.fe_creado))"
        ));

        $paises       = \DB::select( \DB::raw(
                                    "SELECT COUNT(distinct viv.co_pais) nu_cantidad
                                       FROM vivienda viv 
                                      WHERE id_ubicacion = 2"
        ));

        $discapacidad  = PersonaDiscapacidad::count();

        $familiares    = Persona::where('id_parentesco', '<>' , 99)->count();

        $sexo          = \DB::select( \DB::raw(
                                        "SELECT COUNT(per.id_persona) AS nu_cantidad,
                                           per.tx_sexo
                                           FROM persona per 
                                       GROUP BY (per.tx_sexo)"
        ));

       $registrados    = Usuario::count();

        return compact('registrados','usuario', 'paises', 'discapacidad', 'familiares', 'sexo');

    }
    
}

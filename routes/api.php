<?php

use Illuminate\Http\Request;


Route::group(['middleware' => 'auth:api', 'prefix'=>'v1'], function () {
    
    Route::apiResource('status',           'StatusController');
    Route::get('/status/grupo/{id_grupo}', 'StatusController@statusGrupo');

    Route::apiResource('persona',       'PersonaController');
    Route::get('persona/familiar/{id_usuario}', 'PersonaController@personaFamiliar');

    Route::apiResource('personaEmpleo', 'PersonaEmpleoController');
    Route::get('personaEmpleo/usuario/{id_usuario}', 'PersonaEmpleoController@personaEmpleoUsuario');

    Route::apiResource('tipoDiscapacidad','TipoDiscapacidadController');
    Route::apiResource('estadoCivil',   'EstadoCivilController');
    Route::apiResource('parentesco',    'ParentescoController');
    Route::apiResource('mision',        'MisionController');
    
    Route::apiResource('pais',          'PaisController');
    Route::apiResource('estado',        'EstadoController');
    Route::apiResource('ciudad',        'CiudadController');
    Route::get('ciudad/estado/{nb_estado}', 'CiudadController@ciudadEstado');

    Route::apiResource('empleo',        'EmpleoController');
    Route::get('empleo/usuario/{id_usuario}',  'EmpleoController@empleoUsuario');

    Route::apiResource('vivienda',  'ViviendaController');
    Route::get('vivienda/usuario/{id_usuario}',  'ViviendaController@viviendaUsuario');

    Route::apiResource('tipoVivienda',  'TipoViviendaController');
    Route::apiResource('servicio',      'ServicioController');

    Route::apiResource('nivelEstudio',  'NivelEstudioController');
    Route::apiResource('sector',        'SectorController');
    Route::apiResource('tipoCargo',     'TipoCargoController');
    Route::apiResource('jornada',       'JornadaController');
    Route::apiResource('remuneracion',  'RemuneracionController');
    Route::apiResource('moneda',        'MonedaController');

    Route::apiResource('motivo',        'MotivoController');
    Route::apiResource('recurso',       'RecursoController');
    Route::apiResource('grupoMigracion','GrupoMigracionController');
    Route::apiResource('transporte',    'transporteController');
    Route::apiResource('migracion',     'migracionController');

    Route::post('logout', 'Auth\LoginController@logout');

    Route::get('/user', function (Request $request) {
        return $request->user();
    });

    Route::patch('settings/profile', 'Settings\UpdateProfile');
    Route::patch('settings/password', 'Settings\UpdatePassword');

    
    
    
    

});

Route::group(['middleware' => 'guest:api'], function () {
    Route::post('login', 'Auth\LoginController@login');
    Route::post('register', 'Auth\RegisterController@register');
    Route::post('password/email', 'Auth\ForgotPasswordController@sendResetLinkEmail');
    Route::post('password/reset', 'Auth\ResetPasswordController@reset');
    Route::post('recaptcha', 'Auth\CaptchaController@checkToken');
});

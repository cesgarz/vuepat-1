<?php

use Illuminate\Http\Request;


Route::group(['middleware' => 'auth:api', 'prefix'=>'v1'], function () {
    
    Route::apiResource('status',           'StatusController');
    Route::get('/status/grupo/{id_grupo}', 'StatusController@statusGrupo');


    Route::apiResource('persona',        'PersonaController');
    Route::apiResource('estadoCivil',    'EstadoCivilController');
    Route::apiResource('tipoDiscapacidad', 'TipoDiscapacidadController');
    

    Route::apiResource('pais',          'PaisController');
    Route::apiResource('estado',        'EstadoController');
    Route::apiResource('ciudad',        'CiudadController');
    Route::get('ciudad/estado/{nb_estado}', 'CiudadController@ciudadEstado');

    Route::apiResource('tipoVivienda',  'TipoViviendaController');
    Route::apiResource('servicio',      'ServicioController');


    Route::apiResource('nivelEstudio',  'NivelEstudioController');
    Route::apiResource('sector',        'SectorController');
    Route::apiResource('tipoCargo',     'TipoCargoController');
    Route::apiResource('jornada',       'JornadaController');
    Route::apiResource('remuneracion',  'RemuneracionController');
    Route::apiResource('moneda',        'MonedaController');

    

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

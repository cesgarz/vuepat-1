<?php

use Illuminate\Http\Request;

Route::group(['middleware' => 'auth:api', 'prefix'=>'v1'], function () {
    
    Route::get('/usuario/lista',      'UsuarioController@lista');
    Route::apiResource('/usuario',    'UsuarioController');
    Route::put('/usuario/update/password/{usuario}', 'UsuarioController@updatePassword');

    Route::get('/home/data',          'HomeController@data');
    
    Route::apiResource('status',      'StatusController');
    Route::get('/status/grupo/{id_grupo}', 'StatusController@statusGrupo');

    Route::apiResource('menu',         'MenuController');
    Route::get('/menu/padre',          'MenuController@menuPadre');

    Route::get('/rolmenu/menus',       'RolMenuController@getMenusByRol');

    Route::apiResource('persona',      'PersonaController');
    Route::get('persona/familiar/{id_usuario}', 'PersonaController@personaFamiliar');

    Route::apiResource('personaEmpleo', 'PersonaEmpleoController');
    Route::get('personaEmpleo/usuario/{id_usuario}', 'PersonaEmpleoController@personaEmpleoUsuario');

    Route::get('discapacidad/lista',    'DiscapacidadController@lista');
    Route::apiResource('discapacidad',  'DiscapacidadController');
    Route::get('discapacidad/tipo/{id_tipo_discapacidad}','DiscapacidadController@discapacidadTipo');
    
    Route::apiResource('tipoDiscapacidad','TipoDiscapacidadController');
    Route::apiResource('estadoCivil',   'EstadoCivilController');
    Route::apiResource('parentesco',    'ParentescoController');

    Route::get('mision/lista',          'MisionController@lista');
    Route::apiResource('mision',        'MisionController');
    
    Route::apiResource('pais',          'PaisController');
    Route::apiResource('estado',        'EstadoController');
    Route::apiResource('ciudad',        'CiudadController');
    Route::get('ciudad/estado/{nb_estado}', 'CiudadController@ciudadEstado');

    Route::apiResource('empleo',        'EmpleoController');
    Route::get('empleo/usuario/{id_usuario}', 'EmpleoController@empleoUsuario');

    Route::apiResource('vivienda',      'ViviendaController');
    Route::apiResource('vivienda',      'ViviendaController');
    Route::get('vivienda/usuario/{id_usuario}', 'ViviendaController@viviendaUsuario');

    Route::apiResource('tipoVivienda',  'TipoViviendaController');
    Route::apiResource('servicio',      'ServicioController');

    Route::apiResource('nivelEstudio',  'NivelEstudioController');
    Route::apiResource('tipoCargo',     'TipoCargoController');
    Route::apiResource('jornada',       'JornadaController');
    Route::apiResource('remuneracion',  'RemuneracionController');
    Route::apiResource('moneda',        'MonedaController');

    Route::get('sector/lista',          'SectorController@lista');
    Route::apiResource('sector',        'SectorController');
    
    Route::apiResource('rol',           'RolController');

    Route::get('motivo/lista',          'MotivoController@lista');
    Route::apiResource('motivo',        'MotivoController');
    Route::apiResource('recurso',       'RecursoController');
    Route::apiResource('grupoMigracion','GrupoMigracionController');
    Route::apiResource('transporte',    'TransporteController');

    Route::apiResource('migracion',     'MigracionController');
    Route::get('migracion/usuario/{id_usuario}', 'MigracionController@migracionUsuario');

    Route::post('logout',               'Auth\LoginController@logout');
    Route::patch('settings/profile',    'Settings\UpdateProfile');
    Route::patch('settings/password',   'Settings\UpdatePassword');
    
    Route::get('/reports/{nb_tabla}',   'Reportes\ReporteController@showReporte');
    Route::post('/reports',             'Reportes\ReporteController@getReporte');
    Route::post('/getReporteExcel',     'Reportes\ReporteController@getReporteExcel');

    

});

Route::group(['middleware' => 'guest:api'], function () {

    Route::post('login',            'Auth\LoginController@login');
    Route::post('register',         'Auth\RegisterController@register');
    Route::post('password/email',   'Auth\ForgotPasswordController@sendResetLinkEmail');
    Route::post('password/reset',   'Auth\ResetPasswordController@reset');
    Route::post('recaptcha',        'Auth\CaptchaController@checkToken');

});

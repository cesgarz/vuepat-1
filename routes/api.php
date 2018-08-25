<?php

use Illuminate\Http\Request;


Route::group(['middleware' => 'auth:api', 'prefix'=>'v1'], function () {
    
    Route::apiResource('estadoCivil', 'EstadoCivilController');
    Route::apiResource('tipoDiscapacidad', 'TipoDiscapacidadController');
    Route::apiResource('persona', 'PersonaController');




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

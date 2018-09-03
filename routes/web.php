<?php


Route::View('/',                'welcome')->name('welcome'); 
Route::View('/welcome',         'welcome'); 
Route::View('/registration',    'registration')->name('registration'); ;
Route::View('/recovery',        'recovery'); 
Route::get('/usuario/verificar/{codigo}', 'UsuarioController@verificar');

Route::middleware(['auth'])->group(function () 
{
    //usuario 
    Route::View('/registro',        'registro');
    Route::View('/planilla',        'planilla');
    Route::get('/PlanillaPdf',      'Reportes\PlanillaPdfController@index');

    //gral
    Route::View('/home',            'home'); 

    //tablas maestras
    Route::View('/discapacidad',    'discapacidad'); 
    Route::View('/mision',          'mision'); 
    Route::View('/motivo',          'motivo'); 
    Route::View('/sector',          'sector'); 

    //administracion
    Route::View('/status',          'status');
    Route::View('/usuario',         'usuario');
    
    //reportes
    Route::View('/reports.persona', 'reports.persona');
    Route::get('/getReporteExcel',  'Reportes\ReporteController@getArchivo');
});

Auth::routes();


/*
Route::get('codigo-qr/ejemplo', function () 
{
    return QRCode::meCard('John Doe', '1234 Main st.', '+1 001 555-1234', 'john.doe@example.com')->svg();

}); 
*/
<?php


Route::get('codigo-qr/ejemplo', function () 
{
    return QRCode::meCard('John Doe', '1234 Main st.', '+1 001 555-1234', 'john.doe@example.com')->svg();

}); 

Route::get('/getReporteExcel', 'Reportes\ReporteController@getArchivo');

Route::get('/PlanillaPdf', 'Reportes\PlanillaPdfController@index');

Route::get('/',        function ()       {   return view('welcome'); });

Route::get('/{vista}', function ($vista) {   return view($vista); });

Auth::routes();

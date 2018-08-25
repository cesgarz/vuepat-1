<?php


//Route::get('/getReporteExcel', 'Reportes\ReporteController@getArchivo');

Route::get('/',        function ()       {   return view('welcome'); });

Route::get('/{vista}', function ($vista) {   return view($vista); });

Auth::routes();

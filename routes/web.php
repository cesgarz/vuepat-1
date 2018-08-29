<?php


Route::get('/PlanillaPdf', 'Reportes\PlanillaPdfController@index');

Route::get('/',        function ()       {   return view('welcome'); });

Route::get('/{vista}', function ($vista) {   return view($vista); });

Auth::routes();

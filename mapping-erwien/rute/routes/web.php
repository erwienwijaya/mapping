<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/

Route::get('/', function () { 
   return view('mapping');
});

Route::post('/mapping.save','RuteController@postMarker');
Route::get('/mapping.data','RuteController@getData');
Route::get('/mapping.marker/{id}','RuteController@getMarker');
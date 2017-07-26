<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::get('/',[
    'uses' => 'IndexController@ShowMainPage'
]);
Route::get('/search/{city}',['uses' => 'IndexController@citySearch']);
Route::get('/search',['uses' => 'IndexController@allCity']);
Route::get('/{city}',[
    'uses' => 'cityController@showCityDetail'
]);



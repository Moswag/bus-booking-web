<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['namespace' => 'Customer'],function () {
  Route::post('/register','ApiController@registerCustomer');
  Route::post('/login','ApiController@login');
  Route::get('/companies','ApiController@companies');
  Route::get('/routes/{id}','ApiController@getCompanyRoutes');
  Route::post('/book_bus','ApiController@bookBus');
  Route::get('/get_receipts/{id}','ApiController@getReceipts');
  Route::get('/promotions','ApiController@getPromotions');




});



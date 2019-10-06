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

Route::get('/','UserController@index')->name('home');
Route::post('/signin','UserController@signin')->name('signin');
Route::get('/register','UserController@register')->name('register');
Route::post('/register_company_admin','UserController@registerAsCompanyAdmin')->name('register_company_admin');


Route::group(['namespace' => 'Admin','middleware'=>'auth'],function () {
    Route::get('/dashboard','AdminController@dashboard')->name('dashboard');
    Route::get('/add_admin','AdminController@addAdmin')->name('add_admin');
    Route::post('/save_admin','AdminController@saveAdmin')->name('save_admin');
    Route::get('/view_admins','AdminController@viewAdmins')->name('view_admins');
    Route::get('/view_customers','AdminController@viewCustomers')->name('view_customers');
    Route::get('/logout','AdminController@logout')->name('logout');

    Route::get('/change_password','AdminController@vChangePassword')->name('change_password');
    Route::post('/save_change_password','AdminController@changePassword')->name('save_change_password');


    Route::get('/add_company','CompanyController@addCompany')->name('add_company');
    Route::get('/get_company_admins','CompanyController@getCompanyAdmins')->name('get_company_admins');
    Route::post('/save_company','CompanyController@saveCompany')->name('save_company');
    Route::get('/view_companies','CompanyController@viewCompanies')->name('view_companies');

    Route::get('/view_company_admins','CompanyController@viewCompanyAdmins')->name('view_company_admins');

    Route::get('/view_cities','CityController@viewCities')->name('view_cities');
    Route::get('/add_city','CityController@addCity')->name('add_city');
    Route::post('/save_city','CityController@saveCity')->name('save_city');


    Route::get('/add_token','TokenController@addToken')->name('add_token');
    Route::post('/generate_token','TokenController@saveToken')->name('generate_token');
    Route::get('/view_tokens','TokenController@viewTokens')->name('view_tokens');
});

Route::group(['namespace' => 'Company','middleware'=>'auth'],function () {
    Route::get('/company_dashboard','CompanyController@dashboard')->name('company_dashboard');
    Route::get('/add_route','BusRoutesController@addBusRoute')->name('add_route');
    Route::post('/save_route','BusRoutesController@saveBusRoute')->name('save_route');
    Route::get('/view_routes','BusRoutesController@viewBusRoutes')->name('view_routes');
    Route::get('/add_promotion','PromotionController@addPromotion')->name('add_promotion');
    Route::get('/view_promotions','PromotionController@viewPromotions')->name('view_promotions');
    Route::post('/save_promotion','PromotionController@savePromotion')->name('save_promotion');

    Route::get('/view_tickets_pending','TicketsController@viewPendingTickets')->name('view_tickets_pending');
    Route::get('/view_processed_tickets','TicketsController@viewProcessedTickets')->name('view_processed_tickets');
    Route::get('/view_all_tickets','TicketsController@viewAllTickets')->name('view_all_tickets');

    Route::get('/update_ticket/{id}','TicketsController@updateTicket')->name('update_ticket');

});

//Route::get('/admin_dash','AdminController@index')->name('admin_dash');

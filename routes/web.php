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

// Route::get('/', function () {
//     return view('welcome');
// });

Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');

Route::POST('newsletters','Transend\HomePageController@newsLetters')->name('news.letters');

Route::group(['prefix' => 'hi' ], function () {
		Session::forget('previousUrl');
		Route::GET('/','Transend\HomePageController@index');
		Route::POST('/add-comment','Transend\CategoryPageController@addComment')->name('add_comment');
		Route::GET('/about','Transend\CategoryPageController@about');
		Route::GET('/contact','Transend\CategoryPageController@contact');
		Route::GET('/top-products','Transend\ToptenController@index');
		Route::GET('/top-products/{alias}-{id}','Transend\ToptenController@show')->where(['id'=>'[0-9]+', 'alias'=>'[a-z0-9,-]+']);
		Route::GET('/amp/top-products/alias-id','AmpController@index');
		Route::GET('/amp/top-products/{alias}-{id}','AmpController@show')->where(['id'=>'[0-9]+', 'alias'=>'[a-z0-9,-]+']);
		Route::GET('/amp/{content}/{category}/{alias}-{id}','AmpController@articleShow')->where(['id'=>'[0-9]+', 'alias'=>'[a-z0-9,-]+']);
		Route::GET('{content}/{category?}','Transend\CategoryPageController@index');
		Route::GET('{content}/{category}/{alias}-{id}','Transend\CategoryPageController@show')->where(['id' => '[0-9]+', 'alias' => '[a-z0-9,-]+']);
	});

Route::group(['prefix' => '' ], function () {
		Session::forget('previousUrl');
		Route::GET('/','Frontend\HomePageController@index'); 
		Route::GET('/about','Frontend\CategoryPageController@about');
		Route::GET('/contact','Frontend\CategoryPageController@contact');
		Route::GET('{content}/{category?}','Frontend\CategoryPageController@index');
		Route::GET('{content}/{category}/{alias}-{id}','Frontend\CategoryPageController@show')->where(['id' => '[0-9]+', 'alias' => '[a-z0-9,-]+']);
	});

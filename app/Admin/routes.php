<?php

use Illuminate\Routing\Router;

Admin::registerHelpersRoutes();

Route::group([
    'prefix'        => config('admin.prefix'),
    'namespace'     => Admin::controllerNamespace(),
    'middleware'    => ['web', 'admin'],
], function (Router $router) {

    $router->get('/', 'HomeController@index');
    $router->Resource('/articles', ArticleController::class);
    $router->Resource('/authors', AuthorController::class);
    $router->Resource('/contenttype', ContentController::class);
    $router->Resource('/languages', LanguageController::class);
    $router->Resource('/front-menu', MenuController::class);
    $router->Resource('/firstmodule', FirstController::class);
    $router->Resource('/secondmodule', SecondController::class);
    $router->Resource('/thirdmodule', ThirdController::class);
    $router->Resource('/category', CategoryController::class);
    $router->Resource('/topten', TopTenController::class);
    $router->Resource('/products', ProductController::class);
    $router->Resource('/specifications', SpecificationController::class);
    $router->get('/admin/new/panel/get_data', 'FirstController@getData');
    $router->get('/get_child_specification', 'SpecificationController@getChildSpecifications');
});
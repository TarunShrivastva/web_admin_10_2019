<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use View;

class FrontMenuServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap the application services.
     *
     * @return void
     */
    public function boot()
    {
        View::composer(['frontend_layouts.nav','transend_layouts.nav'], 
                'App\Http\FrontMenu\FrontMenu');
    }

    /**
     * Register the application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}

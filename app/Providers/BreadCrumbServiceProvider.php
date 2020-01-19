<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use View;

class BreadCrumbServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap the application services.
     *
     * @return void
     */
    public function boot()
    {
        View::composer(['frontend_layouts.category_ad','transend_layouts.category_ad','transend_layouts.amp_layouts.category_ad'], 
                'App\Http\ViewMenu\BreadCrumb');
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

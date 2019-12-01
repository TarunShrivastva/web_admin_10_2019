<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use View;

class MetaServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap the application services.
     *
     * @return void
     */
    public function boot()
    {
        // View::composer(['transend_layouts\home_meta','frontend_layouts\home_meta'], 
                // 'App\Http\SeoView\Seo');
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

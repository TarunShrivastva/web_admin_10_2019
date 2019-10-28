<?php

namespace App\Http\Middleware;

use Closure;
use MetaTag;
use App;

class SeoMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $parameters = request()->route()->parameters();
        foreach ($parameters as $key => $value){
          $$key = $value;
        }
        $locale = str_replace('/', '', request()->route()->getPrefix());
        if($locale == 'hi')
          App::setLocale($locale);
        $this->seoData($locale,$parameters);
        return $next($request);
    }

    public function seoData($lang, $parameters){
        if($lang == 'hi'){
          MetaTag::set('title', 'You are at home');
          MetaTag::set('description', 'This is my home. Enjoy!');
        }else{
          MetaTag::set('title', 'This is a detail page');
          MetaTag::set('description', 'All about this detail page');
          MetaTag::set('image', asset('images/detail-logo.png'));
        }
    }

}

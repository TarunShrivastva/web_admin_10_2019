<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Article extends Model
{
    use SoftDeletes;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'title', 'description','author_id','image','status'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $guarded = [
        'created_at','updated_at'
    ];

    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'articles';


    public function author()
    {
        return $this->belongsTo('App\Author','author_id');
    }

    public function content()
    {
        return $this->belongsTo('App\Contenttype','content_id');
    }

    public function category()
    {
        return $this->belongsTo('App\Category','category_id');
    }

    public function language()
    {
        return $this->belongsTo('App\Language','language_id');
    }
    
    public function firstmodule()
    {
        return $this->belongsTo('App\FirstModule','article_id');
    }    
}

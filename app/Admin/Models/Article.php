<?php

namespace App\Admin\Models;

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
        'title', 'description','author_id','image','status','recent','feature','popular','how','published'
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
        return $this->belongsTo('App\Admin\Models\Author','author_id');
    }

    public function content()
    {
        return $this->belongsTo('App\Admin\Models\Contenttype','content_id');
    }

    public function category()
    {
        return $this->belongsTo('App\Admin\Models\Category','category_id');
    }

    public function language()
    {
        return $this->belongsTo('App\Admin\Models\Language','language_id');
    }
    
    public function firstmodule()
    {
        return $this->belongsTo('App\Admin\Models\FirstModule','article_id');
    }    

    public function comments()
    {
        return $this->hasMany('App\Admin\Models\Comment','article_id');
    }
}

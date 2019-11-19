<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TopTen extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'title', 'content','author_id','image','language_id','status'
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
    protected $table = 'toptens';

    public function author()
    {
        return $this->belongsTo('App\Author','author_id');
    }

    public function language()
    {
        return $this->belongsTo('App\Language','language_id');
    }
}

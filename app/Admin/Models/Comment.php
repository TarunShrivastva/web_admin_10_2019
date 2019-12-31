<?php

namespace App\Admin\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Comment extends Model
{
    use SoftDeletes;
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['article_id' ,'user_id', 'comment', 'status'];

    /**
     * The attributes that aren't mass assignable.
     *
     * @var array
     */
    protected $guarded = ['created_at','updated_at'];
    
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'comments';

    /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */
    protected $dates = ['deleted_at'];

    /**
     * Get the article that owns the comment.
     */
    public function article()
    {
        return $this->belongsTo('App\Admin\Models\Article');
    }

    /**
     * Get the article that owns the comment.
     */
    public function user()
    {
        return $this->belongsTo('App\Admin\Models\User');
    }
}

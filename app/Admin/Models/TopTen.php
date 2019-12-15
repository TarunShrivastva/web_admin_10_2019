<?php

namespace App\Admin\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class TopTen extends Model
{
    use SoftDeletes;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'title', 'description', 'content_id', 'category_id', 'author_id','language_id','status'
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

    /**
     * Get the comments for the blog post.
     */
    public function product()
    {
        return $this->belongsToMany(Product::class)->withTimestamps()->withPivot('deleted_at');
    }

    /**
     * Get the comments for the blog post.
     */
    public function compare()
    {
        return $this->hasOne(Comparision::class,'top_ten_id');
    }
    
}
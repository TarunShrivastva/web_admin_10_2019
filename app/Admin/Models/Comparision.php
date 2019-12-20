<?php

namespace App\Admin\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Comparision extends Model
{
 	use SoftDeletes;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'title', 'alias', 'top_ten_id', 'status'
    ];

    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'comparisions';

    // /**
    //  * Get the comments for the blog post.
    //  */
    // public function product()
    // {
    //     return $this->belongsToMany(Product::class,'compare_product','compare_id','product_id')->withTimestamps()->withPivot('deleted_at');
    // }

    /**
     * Get the comments for the blog post.
     */
    public function compareproduct()
    {
        return $this->hasMany(CompareProduct::class,'compare_id');
    }

    /**
     * Get the comments for the blog post.
     */
    public function topten()
    {
        return $this->belongsTo(TopTen::class,'id');
    }

    /**
     * Get the comments for the blog post.
     */
    public function productOne()
    {
        return $this->hasOne(Product::class,'id','id');
    }

}

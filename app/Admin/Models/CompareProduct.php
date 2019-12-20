<?php

namespace App\Admin\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class CompareProduct extends Model
{
    use SoftDeletes;
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['compare_id' ,'product1' ,'product2' , 'status'];

    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'compare_products';

    /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */
    protected $dates = ['deleted_at'];

    /**
     * Get the comments for the blog post.
     */
    public function compare()
    {
        return $this->belongsTo(Comparision::class,'id');
    }
    
    /**
     * Get the comments for the blog post.
     */
    public function productOne()
    {
        return $this->hasOne(Product::class,'id','product1');
    }
    
    /**
     * Get the comments for the blog post.
     */
    public function productTwo()
    {
        return $this->hasOne(Product::class,'id', 'product2');
    }
}

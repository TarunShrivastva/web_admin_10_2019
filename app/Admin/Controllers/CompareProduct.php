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
    protected $fillable = [
        'compare_id', 'products',  
    ];

    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'compare_products';

    
    /**
     * Get the comments for the blog post.
     */
    public function compare()
    {
        return $this->hasOne(Comparision::class,'id');
    }

    public function getProductsAttribute($value)
    {
        return explode(',', $value);
    }

    public function setProductsAttribute($value)
    {
        $this->attributes['products'] = implode(',', $value);
    }
    
    public function product()
    {
        return $this->hasOne(Product::class,'id', 'products');
    }
}
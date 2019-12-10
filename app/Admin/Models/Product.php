<?php

namespace App\Admin\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Product extends Model
{
    use SoftDeletes;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'title', 'description', 'image', 'status'
    ];

    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'products';

    /**
     * Get the Added Specifications for the Product.
     */
    public function add_specification()
    {
        return $this->hasMany(AddSpecification::class);
    }    

    /**
     * Get the comments for the blog post.
     */
    public function topten()
    {
        return $this->belongsToMany(TopTen::class)->withTimestamps()->withPivot('deleted_at');
    }

}
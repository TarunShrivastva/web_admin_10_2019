<?php

namespace App\Admin\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class AddSpecification extends Model
{
    use SoftDeletes;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'product_id', 'specs_name','value'
    ];

    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'add_specifications';

    /**
     * Get the post that owns the comment.
     */
    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}
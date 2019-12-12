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
        'product_id', 'specification_id', 'parent_specification_id', 'value'
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

    /**
     * Get the post that owns the comment.
     */
    public function specification()
    {
        return $this->belongsTo(Specification::class);
    }
}

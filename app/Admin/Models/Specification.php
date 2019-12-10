<?php

namespace App\Admin\Models;


use Encore\Admin\Traits\AdminBuilder;
use Encore\Admin\Traits\ModelTree;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Specification extends Model
{
    use SoftDeletes, ModelTree, AdminBuilder, SoftDeletes;

    protected $table = 'specifications';

	protected $fillable = ['title', 'parent_id'];

	/**
     * The attributes that aren't mass assignable.
     *
     * @var array
     */
    protected $guarded = ['created_at','updated_at'];

    /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */
    protected $dates = ['deleted_at'];	

    /**
     * Get the comments for the blog post.
     */
    public function add_specification()
    {
        return $this->hasMany(AddSpecification::class,'specification_id');
    }
}

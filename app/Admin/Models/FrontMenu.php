<?php

namespace App\Admin\Models;

use Encore\Admin\Traits\AdminBuilder;
use Encore\Admin\Traits\ModelTree;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class FrontMenu extends Model
{
    use ModelTree, AdminBuilder, SoftDeletes;

    protected $table = 'menus';

	protected $fillable = ['title', 'parent_id', 'status'];

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
    
}
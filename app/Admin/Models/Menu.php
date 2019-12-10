<?php

namespace App\Admin\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Menu extends Model
{
    use SoftDeletes;

	protected $fillable = ['title', 'parent_id', 'order'];

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

    public function children() {
        return $this->hasMany('App\Admin\Models\Menu','id');
    }
    
    public function parent() {
        return $this->belongsTo('App\Admin\Models\Menu','parent_id');
    }
}
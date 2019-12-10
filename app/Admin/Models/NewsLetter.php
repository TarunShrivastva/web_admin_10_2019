<?php

namespace App\Admin\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class NewsLetter extends Model
{
    use SoftDeletes;

	protected $fillable = ['name', 'email', 'status'];

	protected $dates = ['deleted_at'];	
        
}

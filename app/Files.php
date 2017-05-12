<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Files extends Model
{
    protected $table = 'files';
    protected $fillable = [
        'name', 'patent_id', 'cloud_name', 'title'
    ];

}

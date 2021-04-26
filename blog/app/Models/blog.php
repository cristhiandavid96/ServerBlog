<?php

namespace App\Models;

use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class blog extends Model
{
    protected $table = 'blog';
    protected $primaryKey ='id';
    protected $fillable = [
        'categoria',
        'titulo',
        'slug',
        'texto_corto',
        'texto_largo',
        'imagen',
        'created_at',
        'updated_at'
    ];
    
    protected $hidden = [
        'created_at', 'updated_at','imagen'
    ];

    public static function rules($isNew = true)
    {
        return [
            'slug' => 'required'
        ];
    }
}

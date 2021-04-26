<?php

namespace App\Models;

use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Model;
use Laravel\Passport\HasApiTokens;
use Illuminate\Foundation\Auth\User as Authenticatable;

class usuarios extends Authenticatable
{
    use HasApiTokens,Notifiable;

    protected $table = 'usuarios';
    protected $primaryKey ='id';
    protected $fillable = [
        'nombre',
        'email',
        'password',
        'telefono',
        'tipo_usuario_id',
        'created_at',
        'updated_at',
        'rol_id'
    ];
    protected $hidden = [
        'created_at', 'updated_at'
    ];
}

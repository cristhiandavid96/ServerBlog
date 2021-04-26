<?php

namespace App\Models;

use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class roles extends Model
{
    protected $table = 'roles';
    protected $primaryKey ='id';
    protected $fillable = [
        'nombre'
    ];
    
    protected $hidden = [
        'created_at', 'updated_at'
    ];

    public function getRol($id)
    {
        $rol = roles::find($id);
        return ['id'=>$rol->id,'nombre'=>$rol->nombre];
    }
}

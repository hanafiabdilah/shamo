<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TransactionItem extends Model
{
    use HasFactory;

    protected $fillable = ['users_id', 'products_id', 'transactions_id', 'quantity'];

    public function users()
    {
        return $this->belongsToMany(User::class, 'users_id', 'id');
    }

    public function product()
    {
        return $this->hasOne(Product::class, 'id', 'products_id');
    }

    public function transactions()
    {
        return $this->belongsToMany(Transaction::class, 'transactions_id', 'id');
    }
}

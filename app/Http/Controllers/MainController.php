<?php

namespace App\Http\Controllers;

use Illuminate\Http\Requests;

use App\Http\Request;
use App\Product;


class MainController extends Controller{
    

    public function home(){
        $products = Product::all();

        return view('main.home',["products" => $products]);
    }
}
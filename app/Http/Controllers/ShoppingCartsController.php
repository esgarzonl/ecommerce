<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\ShoppingCart;
use App\PayPal;

use Illuminate\Support\Facades\Mail;
use App\Mail\OrderCreated;



class ShoppingCartsController extends Controller
{

    public function __construct(){
        $this->middleware("shoppingcart");
    }


    public function show($id){
        $shopping_cart = $request->shopping_cart;

        return view("shopping_carts.completed",["shopping_cart" => $shopping_cart
            , "order" => $order]);
    }

    public function checkout(Request $request){
        $shopping_cart = $request->shopping_cart;
        $paypal = new PayPal($shopping_cart);

        $payment = $paypal->generate(); 

        return redirect($payment -> getApprovalLink());

        
    }

    public function index(Request $request){
        
      
        $shopping_cart = $request->shopping_cart;
        
        $products = $shopping_cart->products()->get();

        $total = $shopping_cart->total();

        return view("shopping_carts.index",["products" => $products, "total" => $total]);

    }


}

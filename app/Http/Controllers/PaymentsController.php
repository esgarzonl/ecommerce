<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\ShoppingCart;
use App\PayPal;
use App\Order;

class PaymentsController extends Controller
{

    public function __construct(){
        $this->middleware("shoppingcart");
    }
    
    public function store(Request $request){
        $shopping_cart_id = \Session::get('shopping_cart_id');

        $shopping_cart = ShoppingCart::findOrCreateBySessionID($shopping_cart_id);

        $paypal = new PayPal($shopping_cart);
        $response = $paypal->execute($request->paymentId, $request->PayerID);

        if($response->state == "approved"){
            \Session::remove("shopping_cart_id");
            $order = Order::createFromPayPalResponse($response,$shopping_cart);
            $shopping_cart->approve();
        }

        

        return view("shopping_carts.completed",["shopping_cart" => $shopping_cart, "order" => $order]);
       // dd($order);

    }
}

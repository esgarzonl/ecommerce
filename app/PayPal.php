<?php

namespace App;

class PayPal
{
    private $_apiContext;
    private $shopping_cart;
    private $_ClientId = 'ARho-XbOWpgdvlsqsGbthoxZCWIu51QHZRSsbJXOjQBdwWr6D7GOwBbJG2cW51d_wSzPdkxYWjXDLsEY';
    private $_ClientSecret = 'EJxoz0waAQSODEdfppjzRDj1AciQAnrk4mlU810rUOrFFqFsCBheZVIJypN6QwwvFNI1fV1HJ3_DArUB';

    public function __construct($shopping_cart){

        $this->_apiContext = \PaypalPayment::ApiContext($this->_ClientId, $this->_ClientSecret);

        $config = config("paypal_payment");
        $flatConfig = array_dot($config);

        $this->_apiContext->setConfig($flatConfig);

        $this->shopping_cart = $shopping_cart;
    }

 
    public function generate(){
        $payment = \PaypalPayment::payment()->setIntent("sale")
                    ->setPayer($this->payer())
                    ->setTransactions([$this->transaction()])
                    ->setRedirectUrls($this->redirectURLs());
        
        try{
            $payment->create($this->_apiContext);
        }catch(\Exception $ex){
            dd($ex);
            exit(1);
        }

        return $payment;

    }


    public function payer(){
        return  \PaypalPayment::payer() 
                                ->setPaymentMethod("paypal");
    }

    
    public function redirectURLs(){
        $baseURL = url('/');
        return \PaypalPayment::redirectUrls() 
            ->setReturnUrl("$baseURL/payments/store")
            ->setCancelUrl("$baseURL/carrito");
    }

    
    public function transaction(){
        //transaction info
        return  \PaypalPayment::transaction()
                    ->setAmount($this->amount())
                    ->setItemList($this->items())
                    ->setDescription("Tu compra en BagShop")
                    ->setInvoiceNumber(uniqid());
    }


    public function items(){
        $items = [];
        $products = $this->shopping_cart->products()->get();
        foreach ($products as $product) {
            array_push($items, $product->paypalItem());
        }
        return \PaypalPayment::itemList()->setItems($items);
    }


    public function amount(){
        return \PaypalPayment::amount()->setCurrency("USD")
                                    ->setTotal($this->shopping_cart->total());
    }

    public function execute($paymentId,$payerId){
        $payment = \PaypalPayment::getById($paymentId,$this->_apiContext);

        $execution = \PaypalPayment::PaymentExecution()->setPayerId($payerId);

        
        return $payment->execute($execution,$this->_apiContext);
    }

}
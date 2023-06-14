@extends("layouts.app")

@section("content")

<header class="big-padding text-center blue-grey white-text">
    
    <h1>Compra completada</h1>
</header>

<div class="container">
    <div class="card large_padding">
        <div class="col-md-auto">
            <h3 >Tu pago fue procesado <span class="{{ $order->status }}">{{ $order->status }}</span></h3>
            <p>Verifica los detalles de tu envío:</p>
        </div>
        <div class="row large-padding">
            <div class="col-sm">Correo</div>
            <div class="col-sm">{{ $order->email }}</div>
        </div>

        <div class="row large-padding">
            <div class="col-sm">Dirección</div>
            <div class="col-sm">{{ $order->address() }}</div>
        </div>

        <div class="row large-padding">
            <div class="col-sm">Código postal</div>
            <div class="col-sm">{{ $order->postal_code }}</div>
        </div>

        <div class="row large-padding">
            <div class="col-sm">Ciudad</div>
            <div class="col-sm">{{ $order->city }}</div>
        </div>

        <div class="row large-padding">
            <div class="col-sm">Estado y país</div>
            <div class="col-sm">{{ "$order->state $order->country_code "}}</div>
        </div>

        <div class="text-center top-space">
            <a class="btn btn-link badge-primary no-padding no-margin" 
            href="{{url('/compras/'.$shopping_cart->customid)}}">Link permanente de tu compra</a>
        </div>
        <br>


    </div>
</div>

@endsection
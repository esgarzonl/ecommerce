@extends('layouts.app')

@section('title','Bag Shop')

@section('content')

        <div class="container text-center products-container">
            @foreach($products as $product)       
                @include('products.product',['product' => $product])
            @endforeach
        </div> 
@endsection(Bienvenidos)
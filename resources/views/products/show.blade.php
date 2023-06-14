@extends('layouts.app')

@section('content')
<br>
    <div class="container">
       @include('products.product',['product' => $product])
    </div>

@endsection
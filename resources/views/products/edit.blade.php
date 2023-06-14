@extends("layouts.app")
@section("content")
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <div class="container white">
        <h1>Editar producto</h1>
        <!-- Formulario -->
        @include('products.form',['product' => $product, 'url' => 
        '/products/'.$product->id, 'method' => 'PATCH'])
    </div>
@endsection
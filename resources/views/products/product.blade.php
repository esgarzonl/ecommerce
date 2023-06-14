<div class="card product text-left">
            @if(Auth::check() && $product->user_id == Auth::user()->id)
                <div class="absolute actions">
                <a href="{{url('/products/'.$product->id.'/edit')}}" class="btn btn-link badge-primary  
                                    no-margin">Editar</a>
                            @include('products.delete',['product' => $product])
                </div>
                <br><br>
            @endif
            

            <h1>{{$product->title}}</h1>
            <div class="row">
            <hr>
                <div class="col-sm-6 col-xs-12">
                    @if($product->extension)
                        <img src='{{url("/products/images/$product->id.$product->extension")}}'
                            class="product-avatar">
                    @endif
                </div>
                <div class="col-sm-6 col-xs-12">
                    <p>
                        <strong>Descripción</strong>
                    </p>
                    <p>
                        {{$product->description}}
                    </p>
                    <p>
                       @include("in_shopping_carts.form",["product" => $product])
                    </p>
                </div>
            </div>
        </div>
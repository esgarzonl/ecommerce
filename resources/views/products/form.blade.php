{!! Form::open(['url' => $url, 'method' => $method, 'files' => true  ] ) !!}

            <div class="form-group">
                {{ Form::text('title',$product->title,['class' => 'form-control', 
                    'placeholder' => 'Nombre del producto.'])  }}
            </div>
            <br>
            <div class="form-group">
                {{ Form::number('pricing',$product->pricing,['class' => 'form-control', 
                    'placeholder' => 'Precio del producto.'])  }}
            </div>
            <br>
                <div class="form-group ">
                {{ Form::file('cover') }}
                </div>   
            <br>
            <div class="form-group">
            {{ Form::textarea('description',$product->description,['class' => 'form-control', 
                    'placeholder' => 'Descripción del producto.'])  }}
            </div>
                <br>
            <div class="form-group text-right">
                <div class="container ">
                    <a href="{{url('/products')}}">Regresar al listado de productos.</a>
                    <input type="submit" value="Enviar" class="btn btn-success ">
                </div>
            </div>

{!! Form::close() !!}
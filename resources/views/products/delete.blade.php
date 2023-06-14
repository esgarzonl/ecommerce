{!! Form::open(['url' => '/products/'.$product->id, 
    'method' => 'DELETE', 'class'=>'inline-block']) !!}
    <input type="submit" class="btn btn-link redd-text 
    no-margin  badge-danger" value="Eliminar">
{!! Form::close() !!}
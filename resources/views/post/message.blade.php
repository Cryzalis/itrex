@extends('app')

@section('content')
<div class="row">
<div class="alert alert-danger" role="alert">
  <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
  <span class="sr-only">Message:</span>
  {{$response['message']}}
</div>
</div>
@stop



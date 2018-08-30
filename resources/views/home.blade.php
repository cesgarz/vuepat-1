@extends('layouts.app')
@section('content')

<v-container fluid grid-list-md text-xs-center>

  <div v-if="$store.getters.user.id_usuario == 1">
    <home></home> 
  </div>
  <div v-else>
    <registro></registro> 
  </div>

</v-container>
@endsection

@extends('base.index')

@section('content')
<div class="backBody">
    <section class="top-panel">
        <p>Witaj, {{ Auth::User()->name }}</p>
    </section>
    <section class="middle-panel">
        Edytuj strone zawierającą cv:
        <br/>
        <form action="/admin/CV/save" method="POST">
            {{ csrf_field() }}
            <input type="hidden" name="section" value="cv" />
            <textarea name="content" rows="20" cols="80">{{ $cvContent }}</textarea>
            <center><input type="submit" name="save" value="Zapisz" /></center>
        </form>
    </section>
</div>




@endsection

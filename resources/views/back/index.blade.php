@extends('base.index')

@section('content')
<div class="backBody">
    <section class="top-panel">
        <a href="/logout"><p>Witaj, {{ Auth::User()->name }}</p></a>
    </section>
    <section class="middle-panel">
        Edytuj strony:
        <a href="/admin/general"><button>Główna</button></a>
        <a href="/admin/about"><button>O mnie</button></a>
        <a href="/admin/CV"><button>CV</button></a>
        <a href="/admin/project"><button>Projekty</button></a>
        
    </section>
</div>




@endsection

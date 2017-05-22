@extends('base.index')

@section('content')
<div class="headerTop">
    <div class="title">
        <section class="first">
            <?php
                $generalCode = htmlspecialchars_decode($generalContent);
                echo "$generalCode";
            ?>
        </section>
        <section id="project">
            <div id="Header" class="container">
                <?php
                    $projectCode = htmlspecialchars_decode($projectContent);
                    echo "$projectCode";
                ?>
            </div>
        </section>

        <section id="cv">
            <div class="container containerCV">
                <?php
                    $cvCode = htmlspecialchars_decode($cvContent);
                    echo "$cvCode";
                ?>
            </div>
        </section>

        <section id="about">
            <div class="container">
                <p>
                <?php
                    $aboutCode = htmlspecialchars_decode($aboutContent);
                    echo "$aboutCode";
                ?>
                </p>
            </div>
        </section>

        <section id="contact">
            <div id="Header" class="container">
                <form action="/send" method="POST">
                    {{ csrf_field() }}
                    <div class="row form" style="padding-top: 40px">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
                            <input class="name" type="text" name="name" placeholder="Imię i nazwisko" required style="min-width: 100%; height: 40px; font-size: 20px">
                        </div>
                    </div>
                    <div class="row form" style="padding-top: 30px">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
                            <input class="mail" type="email" name="mail" placeholder="E-mail" required style="min-width: 100%; height: 40px; font-size: 20px; ">
                        </div>
                    </div>
                    <div class="row form" style="padding-top: 30px">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
                            <textarea class="message" rows="8" cols="50" name="message" style="min-width: 100%; font-size: 20px" placeholder="Wiadomość"></textarea>
                        </div>
                    </div>
                    <div class="row form" style="padding-top: 40px; padding-bottom: 110px" >
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
                            <center><input class="submit" type="submit" value="Wyślij" name="send" style="min-width: 20%; height: 40px; "></center>
                        </div>
                    </div>
                </form>
            </div>
        </section>
    </div>
    <div class="cornerAbout js-corner js-cornerAbout corner">
        <p>
            O mnie
        </p>
    </div>
    <div class="cornerCV js-corner js-cornerCV corner">
        <p>
            CV
        </p>
    </div>
    <div class="cornerProject js-corner js-cornerProject corner">
        <p>
            Projekty
        </p>
    </div>
    <div class="cornerContact js-corner js-cornerContact corner">
        <p>
            Kontakt
        </p>
    </div>

</div>






@endsection

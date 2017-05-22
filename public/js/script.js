$("document").ready(function () {
    var i = 0;
    var x = [];

    $("#Header .article div img").each
            (
                    function ()
                    {
                        x[i] = i;
                        $(this).attr("id", "image" + x[i++]);
                    }
            );

    $("#Header .article div img").mouseenter
            (
                    function ()
                    {
                        console.log($(this).attr("id"));
                        $("#" + $(this).attr("id")).animate({opacity: 0});
                    }
            );
    $("#Header .article div img").mouseleave
            (
                    function ()
                    {
                        $("#" + $(this).attr("id")).animate({opacity: 1000}, "fast");
                    }
            );
    slajderBackground();
    $('.js-cornerProject').click(function () {
        setTimeout("cornerProject()", 500);
    });
    $('.js-cornerCV').click(function () {
        setTimeout("cornerCV()", 500);
    });
    $('.js-cornerAbout').click(function () {
        setTimeout("cornerAbout()", 500);
    });
    $('.js-cornerContact').click(function () {
        setTimeout("cornerContact()", 500);
    });




});

function slajderBackground() {
    var i = 1;
    $('.js-corner').click(function () {
        if (i === 4) {
            i = 0;
        }

        $('.headerTop').animate({
            opacity: 0
        }, 500, function () {
            $(this).css({
                background: 'url("../image/computer' + i + '.jpg") top/cover no-repeat'
            });
        }).animate({
            opacity: 1
        }, 500);
        i++;

    });

}

function corner() {
    $('.js-cornerProject').click(function () {
        $('#project').css({
            display: 'block'
        });
        $('.first').css({
            display: 'none'
        });
    });
    $('.js-corner').mouseout(function () {

    });
}

function cornerProject() {
    $('#project').css({
        display: 'block'
    });
    $('.first').css({
        display: 'none'
    });
    $('#cv').css({
        display: 'none'
    });    
    $('#about').css({
        display: 'none'
    }); 
    $('#contact').css({
        display: 'none'
    });
}

function cornerCV() {
    $('#cv').css({
        display: 'block'
    });
    $('.first').css({
        display: 'none'
    });
    $('#project').css({
        display: 'none'
    });    
    $('#about').css({
        display: 'none'
    });   
    $('#contact').css({
        display: 'none'
    });
}

function cornerAbout() {
    $('#about').css({
        display: 'block'
    });
    $('.first').css({
        display: 'none'
    });
    $('#project').css({
        display: 'none'
    });    
    $('#cv').css({
        display: 'none'
    });    
    $('#contact').css({
        display: 'none'
    });    
}

function cornerContact() {
    $('#contact').css({
        display: 'block'
    });
    $('.first').css({
        display: 'none'
    });
    $('#project').css({
        display: 'none'
    });    
    $('#cv').css({
        display: 'none'
    });  
    $('#about').css({
        display: 'none'
    });
}
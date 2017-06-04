
$( document ).ready(function() {

    $( ".nav-div" ).click(function() {
        $(".nav-indicator").each(function() {
            $(this).css("background-color", "transparent");
        });
    });

    FUSION.get.node("blog_indicator").style.backgroundColor = "#483D3F";

    $(window).scroll(function () {
        if ($(window).scrollTop() > 170) {
            $('#navbar').addClass('navbar-fixed');
            $('#navbar-inner').addClass('navbar-inner-fixed');
            $('.title').css('height', "200px");
            $('.titlelinks').css('border', "none");
            $('.nav-indicator').css('margin-top', '0px');
            $('.titlelink').css('padding', "4px 10px 10px 10px");
        }
        if ($(window).scrollTop() < 171) {
            $('#navbar').removeClass('navbar-fixed');
            $('#navbar-inner').removeClass('navbar-inner-fixed');
            $('.title').css('height', "150px");
            $('.titlelinks').css('border-top', "1px solid #c1b8be");
            $('.nav-indicator').css('margin-top', '-6px');
            $('.titlelink').css('padding', "10px");
        }
    });
});
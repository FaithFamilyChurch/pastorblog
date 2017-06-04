
$( document ).ready(function() {

    $( ".nav-div" ).click(function() {
        $(".nav-indicator").each(function() {
            $(this).css("background-color", "transparent");
        });
    });

    var sPath = window.location.pathname.split("/")[1];
    sPath = FUSION.lib.isBlank(sPath) ? "home" : sPath;
    FUSION.get.node(sPath + "_indicator").style.backgroundColor = "#483D3F";

});
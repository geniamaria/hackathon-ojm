$("header").load("../components/header.html");
$("footer").load("../components/footer.html");


$("#menu").show();
$("#ocultar-menu").hide();
$("nav").show();

$("#menu").click(function(){
    $('header').hide();
$("#mostar-menu").toggle();
$("#ocultar-menu").toggle();

 $("nav").animate({
       marginTop:'0'
    }, 1000, function() {
        $("nav").show(1000);
    });
});
$("#ocultar-menu").click(function(){
    $('header').show();
$("#menu").toggle();
$("#ocultar-menu").toggle();

$("nav").hide();
});

// *******************************************//
//  Rating Star (Begin)                      //
// *****************************************//
// on mouse over
$(document).on('mouseenter',"#star-1",function(e) {
    $('#star-1').removeClass("empty");
});

$(document).on('mouseenter',"#star-2",function(e) {
    $('#star-1').removeClass("empty");
    $('#star-2').removeClass("empty");
});

$(document).on('mouseenter',"#star-3",function(e) {
    $('#star-1').removeClass("empty");
    $('#star-2').removeClass("empty");
    $('#star-3').removeClass("empty");
});

$(document).on('mouseenter',"#star-4",function(e) {
    $('#star-1').removeClass("empty");
    $('#star-2').removeClass("empty");
    $('#star-3').removeClass("empty");
    $('#star-4').removeClass("empty");
});

$(document).on('mouseenter',"#star-5",function(e) {
    $('#star-1').removeClass("empty");
    $('#star-2').removeClass("empty");
    $('#star-3').removeClass("empty");
    $('#star-4').removeClass("empty");
    $('#star-5').removeClass("empty");
});

// on mouse leave
$(document).on('mouseleave',"#star-5",function(e) {
    if (parseInt($("#rating_rate").val()) == 0){
        $('#star-5').addClass("empty");
    }
});

$(document).on('mouseleave',"#star-4",function(e) {
    if (parseInt($("#rating_rate").val()) == 0){
        $('#star-5').addClass("empty");
        $('#star-4').addClass("empty");
    }
});

$(document).on('mouseleave',"#star-3",function(e) {
    if (parseInt($("#rating_rate").val()) == 0){
        $('#star-5').addClass("empty");
        $('#star-4').addClass("empty");
        $('#star-3').addClass("empty");
    }
});

$(document).on('mouseleave',"#star-2",function(e) {
    if (parseInt($("#rating_rate").val()) == 0){
        $('#star-5').addClass("empty");
        $('#star-4').addClass("empty");
        $('#star-3').addClass("empty");
        $('#star-2').addClass("empty");
    }
});

$(document).on('mouseleave',"#star-1",function(e) {
    if (parseInt($("#rating_rate").val()) == 0){
        $('#star-5').addClass("empty");
        $('#star-4').addClass("empty");
        $('#star-3').addClass("empty");
        $('#star-2').addClass("empty");
        $('#star-1').addClass("empty");
    }
});

// on click
$(document).on('click',"#star-1",function(e) {
    $("#rating_rate").val(1);
    $('#star-1').removeClass("empty");
    $('#star-2').addClass("empty");
    $('#star-3').addClass("empty");
    $('#star-4').addClass("empty");
    $('#star-5').addClass("empty");
});

$(document).on('click',"#star-2",function(e) {
    $("#rating_rate").val(2);
    $('#star-1').removeClass("empty");
    $('#star-2').removeClass("empty");
    $('#star-3').addClass("empty");
    $('#star-4').addClass("empty");
    $('#star-5').addClass("empty");
});

$(document).on('click',"#star-3",function(e) {
    $("#rating_rate").val(3);
    $('#star-1').removeClass("empty");
    $('#star-2').removeClass("empty");
    $('#star-3').removeClass("empty");
    $('#star-4').addClass("empty");
    $('#star-5').addClass("empty");
});

$(document).on('click',"#star-4",function(e) {
    $("#rating_rate").val(4);
    $('#star-1').removeClass("empty");
    $('#star-2').removeClass("empty");
    $('#star-3').removeClass("empty");
    $('#star-4').removeClass("empty");
    $('#star-5').addClass("empty");
});

$(document).on('click',"#star-5",function(e) {
    $("#rating_rate").val(5);
    $('#star-1').removeClass("empty");
    $('#star-2').removeClass("empty");
    $('#star-3').removeClass("empty");
    $('#star-4').removeClass("empty");
    $('#star-5').removeClass("empty");
});

// *******************************************//
//  Rating Star (End)                        //
// *****************************************//

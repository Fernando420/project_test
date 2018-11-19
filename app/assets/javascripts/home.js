$(function () {

    $('#users1').click(function (e) {
        $("#user1").delay(100).fadeIn(100);
        $("#user2").fadeOut(100);
        $('#users2').removeClass('active');
        $(this).addClass('active');
        e.preventDefault();
    });
    $('#users2').click(function (e) {
        $("#user2").delay(100).fadeIn(100);
        $("#user1").fadeOut(100);
        $('#users1').removeClass('active');
        $(this).addClass('active');
        e.preventDefault();
    });

});

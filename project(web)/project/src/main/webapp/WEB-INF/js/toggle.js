$(function () {
    $(".big-menu").click(function () {
        $(this).toggleClass("active").next().toggle();
    });
});
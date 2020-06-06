const height = $('.navbar-container').height();

$(window).scroll( function () {
    if ($(this).scrollTop() > height) {
        $('.navbar').addClass('fixed');
    } else {
        $('.navbar').removeClass('fixed');
    }
});
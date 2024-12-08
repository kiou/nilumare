$( document ).ready(function() {

    var menu = $('.navigation');

    var checkScroll = function() {
      if ($(window).scrollTop() > 60) {
        menu.addClass('fixed');
        if ($('.message').length) {
            $('.message').remove();
        }
      } else {
        menu.removeClass('fixed');
      }
    };
  
    checkScroll();
  
    $(window).scroll(checkScroll);

    $(".owl-one").owlCarousel({
        loop:false,
        items:1,
        nav:false,
    });

    $(".owl-two").owlCarousel({
      loop:false,
      items:4,
      nav:false,
  });

});


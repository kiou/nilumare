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
      items:3,
      nav:false,
    });

    $(".owl-three").owlCarousel({
      loop:false,
      items:1,
      nav:false,
    });

    $('.beforeAfter').beforeAfter({
      movable: true,
      clickMove: true,
      position: 50,
      opacity:1,
      activeOpacity: 1,
      hoverOpacity: 1,
      separatorColor:'#0095B5',
      arrowColor:'#0095B5',
      separatorColor: '#0095B5',
  });

});


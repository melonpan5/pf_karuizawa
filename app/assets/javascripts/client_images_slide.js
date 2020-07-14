$(document).on('turbolinks:load', function(){
    $('.slider-for').not('.slick-initialized').slick({
       arrows: true,
       infinite: false,
       dots: true,
     });
  });

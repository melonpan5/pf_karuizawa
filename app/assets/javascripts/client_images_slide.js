$(document).on('turbolinks:load', function(){
    $('.slider-for').not('.slick-initialized').slick({
       accessibility: true,
       autoplay: true,
      // 自動再生で切り替えをする時間
      autoplaySpeed: 3000,
      // 自動再生や左右の矢印でスライドするスピード
      speed: 400,
      // 自動再生時にスライドのエリアにマウスオンで一時停止するかどうか
      pauseOnHover: true,
      // 自動再生時にドットにマウスオンで一時停止するかどうか
      pauseOnDotsHover: true,
       arrows: true,
       infinite: false,
       dots: true,
     });
  });

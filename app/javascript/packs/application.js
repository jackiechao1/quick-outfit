import "bootstrap";
import "slick-carousel";
import "slick-carousel/slick/slick.css"
import "slick-carousel/slick/slick-theme.css"

$('.slick-carousel').slick({
  infinite: true,
  slidesToShow: 1,
  centerMode: true,
  arrows: false,

  // slidesToScroll: 3
});

$(document).ready(function(){
  $(".clothes-card").click(function(){
    $(this).toggleClass("active");
  });

  $('#created-outfit').modal('show')
});


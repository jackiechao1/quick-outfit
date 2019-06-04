import "bootstrap";
import "slick-carousel";
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css"

$(".outfits-carousel").slick({
  infinite: true,
  slidesToShow: 4,
  slidesToScroll: 4,
  arrows: false
});

$('.slick-carousel').slick({
  infinite: true,
  centerMode: true,
  slidesToShow: 4,
  slidesToScroll: 4,
  variableWidth: true,
  arrows: false,
  responsive: [
    {
      breakpoint: 1024,
      settings: {
        slidesToShow: 3,
        slidesToScroll: 3,      }
    },
    {
      breakpoint: 800,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 2
      }
    },
    {
      breakpoint: 600,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1
      }
    }
  ]
})

$(document).ready(function(){
  $(".clothes-card").click(function(){
    $(this).toggleClass("active");
  });

  $('#created-outfit').modal('show')
});

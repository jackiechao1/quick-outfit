import "bootstrap";
import "slick-carousel";
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css"

$('.slick-carousel').slick({
  infinite: true,
  slidesToShow: 3,
  centerMode: true,
  slidesToShow: 1,
  slidesToScroll: 1,
  arrows: false,
  variableWidth: true,
  responsive: [
    {
      breakpoint: 1024,
      settings: {
        slidesToShow: 3,
        slidesToScroll: 3,
        infinite: true,
        dots: true
      }
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

let uniq = [];
$('input[type="checkbox"]').click(function(){
  const color_array = [];
  const clicked = document.querySelectorAll(".clothes-card.active")
  clicked.forEach((element) => {
    color_array.push(element.dataset.color);
    uniq = [...new Set(color_array)];
  });
});

document.querySelector(".save-btn").addEventListener("click", (event) => {
  if (uniq.length >= 3) {
    event.stopPropagation();
    alert("too many colors you fool...");
  } else if (uniq.length < 2 || (uniq.includes("pink") && uniq.includes('yellow'))) {
    event.stopPropagation();
    alert("bruh are you kidding...");
  } else if (uniq.includes("yellow") && uniq.includes("red")) {
    event.stopPropagation();
    alert("yellow doesn't match with red")
  }
});

import "bootstrap";
import "slick-carousel";
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css"
import swal from 'sweetalert'

const option = {
      title: "Outfit doesn't match",
      text: "Blue doesn't go with red.",
      icon: "error"
    };

$('.slick-carousel').slick({
  infinite: true,
  centerMode: true,
  slidesToShow: 1,
  slidesToScroll: 1,
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

let uniq = [];
$('input[type="checkbox"]').click(function(){
  const color_array = [];
  const clicked = document.querySelectorAll(".clothes-card.active")
  clicked.forEach((element) => {
    color_array.push(element.dataset.color);
    uniq = [...new Set(color_array)];
  });
});


const newlyValidatedOutfits = document.querySelectorAll('.newly-validated-outfit')
if(newlyValidatedOutfits) {
  newlyValidatedOutfits.forEach((element) => {
    const outfitName = element.dataset.outfitName
    const approved = {
      title: 'Outfit approved',
      text: `Your outfit ${outfitName}`,
      icon: 'success'
    };
    swal(approved);
  })
}

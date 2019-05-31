import "bootstrap";
import "slick-carousel";
import "slick-carousel/slick/slick.css"
// import "slick-carousel/slick/slick-theme.css"

$('.slick-carousel').slick({
  infinite: true,
  centerMode: true,
  slidesToShow: 1,
  slidesToScroll: 1,
  arrows: false,
  responsive: [
    {
      breakpoint: 1024,
      settings: {
        slidesToShow: 3,
        slidesToScroll: 3,
        infinite: true,
        centerMode: true,
        arrows: false,

      }
    },
    {
      breakpoint: 600,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 2,
        infinite: true,
        centerMode: true,
        arrows: false,
      }
    },
    {
      breakpoint: 480,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1,
        infinite: true,
        centerMode: true,
        arrows: false,
      }
    }
    // You can unslick at a given breakpoint now by adding:
    // settings: "unslick"
    // instead of a settings object
  ]

});

// $('.slick-carousel').slick({
//   infinite: true,
//   slidesToShow: 1,
//   centerMode: true,
//   arrows: false,

// });

$(document).ready(function(){
  $(".clothes-card").click(function(){
    $(this).toggleClass("active");
  });

  $('#created-outfit').modal('show')
});

const deleteButtons = document.querySelectorAll(".delete-button")
const clothesCards = document.querySelectorAll(".clothes-card");

let touching = false;
document.addEventListener("click", (event) => {
	const clickedOnACard = event.path.some((element) => {
		return element.classList !== undefined && (
			element.classList.contains("clothes-card-checkbox") ||
			element.classList.contains("clothes-card")
		);
	})
	if (clickedOnACard === false) {
		clothesCards.forEach(card => card.classList.remove("shake"));
		deleteButtons.forEach((button) => {
			button.classList.add("d-none");
		})
	}
})

clothesCards.forEach((card) => {
	card.addEventListener("touchstart", (event) => {
	  touching = true;

		let neverStoppedTouching = true;
	  setInterval(() => {
	  	if (touching === false) {
	  		neverStoppedTouching = false;
	  	}
	  }, 1)

	  setTimeout(() => {
	  	if (neverStoppedTouching === true) {
	  		clothesCards.forEach(card => card.classList.add("shake"));
	  		deleteButtons.forEach((button) => {
	  			button.classList.remove("d-none");
	  		})
	  	}
	  }, 1000)

	})
})

document.addEventListener("touchend", (leave) => {
  touching = false;
})

window.addEventListener('contextmenu', (e) => {
  e.preventDefault();
});

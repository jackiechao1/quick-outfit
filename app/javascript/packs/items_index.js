document.addEventListener("DOMContentLoaded", () => {
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

	const deletePressStart = (event) => {
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
	  }, 1000);
	}

	clothesCards.forEach((card) => {
		card.addEventListener("touchstart", deletePressStart);
		card.addEventListener("mousedown", deletePressStart);
	})

	document.addEventListener("touchend", (leave) => {
	  touching = false;
	})

	document.addEventListener("mouseup", (leave) => {
	  touching = false;
	})

	window.addEventListener('contextmenu', (e) => {
	  e.preventDefault();
	});
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

const option = {
      title: "Outfit doesn't match",
      text: "Blue doesn't go with red.",
      icon: "error"
    };


document.querySelector(".save-btn").addEventListener("click", (event) => {
  if (uniq.length > 3) {
    event.stopPropagation();
    option.text = "too many colors"
    swal(option).then(() => location.reload());
  } else if ((uniq.includes("pink") && uniq.includes('yellow'))) {
    event.stopPropagation();
    option.text = "Pink doesn't go with yellow."
    swal(option).then(() => location.reload());
  } else if (uniq.includes("yellow") && uniq.includes("red")) {
    event.stopPropagation();
    option.text = "Yellow doesn't go with red."
    swal(option).then(() => location.reload());
  } else if (uniq.includes("brown") && uniq.includes("pink")) {
    event.stopPropagation();
    option.text = "Brown doesn't go with pink."
    swal(option).then(() => location.reload());
  } else if (uniq.includes("blue") && uniq.includes("red")) {
    event.stopPropagation();
    swal(option).then(() => location.reload());
  } 
});

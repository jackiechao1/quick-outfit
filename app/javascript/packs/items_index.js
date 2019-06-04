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

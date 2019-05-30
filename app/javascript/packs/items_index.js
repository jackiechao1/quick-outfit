
const deleteButtons = document.querySelectorAll(".delete-button")
const clothesCards = document.querySelectorAll(".clothes-card");
console.log(clothesCards);
const firstCard = clothesCards[0];

let touching = false;
document.addEventListener("click", (event) => {
	console.log(event.path)
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

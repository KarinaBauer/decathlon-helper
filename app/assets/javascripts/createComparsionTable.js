function addText() {
	var newAvantage = avantagePattern.cloneNode(true)
	newAvantage.classList.remove('hidden')
	newAvantage.id = 'avantage'
	var i, fields = newAvantage.getElementsByClassName('mdl-textfield__input')
	for (i = 0; i < fields.length; ++i) {
		fields[i].setAttribute('minlength', '2')
		fields[i].setAttribute('required', null)
	}
	tableAvantages.appendChild(newAvantage)
}

function addRaiting() {
	var newAvantage = avantagePatternWithStars.cloneNode(true)
	newAvantage.classList.remove('hidden')
	newAvantage.id = 'avantage'
	var i, fields = newAvantage.getElementsByClassName('mdl-textfield__input')
	for (i = 0; i < fields.length; ++i) {
		fields[i].setAttribute('minlength', '2')
		fields[i].setAttribute('required', null)
	}
	tableAvantages.appendChild(newAvantage)
}
function validateSize() {
	var i, fields = document.getElementsByClassName('mdl-textfield__input')

	for (i = 0; i < fields.length; ++i) {
		if (fields[i].getAttribute('type') == 'text') {
			if (fields[i].value.length > fields[i].maxLength) { fields[i].parentNode.classList.add('is-invalid') }
		}
	/*
		else if (fields[i].getAttribute('type') == 'number') {
			if (fields[i].value > fields[i].max) { fields[i].parentNode.classList.add('is-invalid') }
		}
	*/
	}
};

window.onload = validateSize

// todo: add number-textfields value overflow handler
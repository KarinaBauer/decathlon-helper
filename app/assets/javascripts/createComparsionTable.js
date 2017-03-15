function addTextComparation() {
	var newAvantage = avantagePattern.cloneNode( true )
	newAvantage.classList.remove( 'hidden' )
	newAvantage.id = 'avantage'

	var valueFields = newAvantage.querySelectorAll( '.mdl-textfield' )

	tableAvantages.appendChild( newAvantage )
}

function addPointComparation() {
	var newAvantage = avantagePatternWithStars.cloneNode( true )
	newAvantage.classList.remove( 'hidden' )
	newAvantage.id = 'avantage'

	var valueFields = newAvantage.querySelectorAll( '.mdl-textfield' )

	tableAvantages.appendChild( newAvantage )
}
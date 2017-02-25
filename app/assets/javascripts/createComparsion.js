function addTableAvantage() {
	var newAvantage = avantagePattern.cloneNode( true )
	newAvantage.classList.remove( 'hidden' )
	newAvantage.id = 'avantage'

	var valueFields = newAvantage.querySelectorAll( '.mdl-textfield' )

	avantages.appendChild( newAvantage )
}

function addTableAvantage() {
	var pattern = document.getElementById( 'avantagePattern' ) 
	var newAvantage = pattern.cloneNode( true )
	newAvantage.classList.remove( 'hidden' )
	newAvantage.querySelector( '.avantageTitleWrapper' ).classList.add( 'is-focused' )
	newAvantage.querySelector( '.avantageValueWrapper' ).classList.add( 'is-focused' )
	newAvantage.querySelector( '.avantageTitle' ).setAttribute( 'name', 'avantages[][title]' )
	newAvantage.querySelector( '.avantageValue' ).setAttribute( 'name', 'avantages[][value]' )
	newAvantage.querySelector( '.avantageTitle' ).id = 'avantages__title'
	newAvantage.querySelector( '.avantageValue' ).id = 'avantages__value'
	avantages.appendChild( newAvantage )
}

function toggleNewPrice(ev) {
	var newPriceToggler = document.getElementById('newPriceToggler')
	if (newPriceToggler.classList.contains('is-checked')) {
			newPrice.classList.remove('hidden')
	} else {
			newPrice.classList.add('hidden')
	}
}

function on_ready(ev)
{
    var newPriceToggler = document.getElementById('newPriceToggler')
    if (newPriceToggler) {
        newPriceToggler.addEventListener('change', toggleNewPrice, false)
    }
}

function toggleNewIcon(event) {
	var newIconToggler = event.currentTarget
	var newIconSelector = event.currentTarget.parentNode.querySelector('#newIcon')

	function get_icons() { return $.ajax( { url: '/api/icons/select'} ).done( function(html) { return $(newIconSelector).append(html) } ) }

	if (!	newIconToggler.classList.contains('is-enabled')) {
				newIconToggler.classList.add('is-enabled')
				newIconSelector.classList.remove('hidden')
	} else {
				newIconToggler.classList.remove('is-enabled')
				newIconSelector.classList.add('hidden')
	}

	if (! newIconSelector.classList.contains('is-updated') ) {
				get_icons()
				newIconSelector.classList.add('is-updated')
	}
}

function selectIcon() {
	var aside = event.currentTarget.parentNode.parentNode.parentNode
	var newIconSource = event.currentTarget.querySelector('img').getAttribute('src')
	aside.querySelector('img').setAttribute('src', newIconSource)
	aside.querySelector('input').setAttribute('value', newIconSource)
}

document.addEventListener('DOMContentLoaded', on_ready, false);


function modalWindow() { ( function() {
  'use strict'

	balisageFormat_A3.addEventListener( 'click', function() { 
		balisageFormat.innerHTML = "A3, "
		paperFormat.innerHTML = "A3"
		paperOrientation.innerHTML = "альбомную"
	})

	balisageFormat_A4.addEventListener( 'click', function() { 
		balisageFormat.innerHTML = "A4, "
		paperFormat.innerHTML = "A4"
		paperOrientation.innerHTML = "альбомную"
	})

	balisageFormat_A5.addEventListener( 'click', function() { 
		balisageFormat.innerHTML = "A5, "
		paperFormat.innerHTML = "A4"
		paperOrientation.innerHTML = "книжную"
	})

	balisageFormat_A6.addEventListener( 'click', function() { 
		balisageFormat.innerHTML = "A6, "
		paperFormat.innerHTML = "A4"
		paperOrientation.innerHTML = "альбомную"
	})

	var dialog = document.querySelector('dialog')
	if (! dialog.showModal) { dialogPolyfill.registerDialog(dialog) }
	dialogButton.addEventListener( 'click', function() { dialog.showModal() } )
	dialog.querySelector('.close').addEventListener( 'click', function() { dialog.close(); } )
	}()
)}

window.onload = modalWindow

function add_item() {
	var item = document.createElement("figure")

	item.innerHTML = '\
		<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label is-focused">\
		  <input class="mdl-textfield__input" autofocus="autofocus" required="required" type="url" name="items[]" id="_url" />\
			<label class="mdl-textfield__label" for="url">Ссылка на товар в decathlon:</label>\
		</div>\
		<button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" onclick="this.parentNode.remove()">\
			удалить\
			<i class="material-icons right">delete</i>\
		</button>'

	item.id = 'enter_url'
	item.classList.add('mdl-color--light-blue-500')
	items.appendChild(item)
}

function add_avant() {
  var avant = document.createElement("figure")
  avant.innerHTML = '\
		<aside>\
			<label for="icon">Иконка</label>\
			<input type="hidden" name="item[avantages][][icon]" id="item_avantages__icon" value="/assets/arrow.jpg" />\
			<img id="CurrentIconShower" src="/assets/arrow.jpg" alt="Arrow" />\
			<a class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect" onclick="toggleNewIcon(event)">\
        <small>Заменить</small>\
			</a>\
			<div class="mdl-list hidden" id="newIcon">\
				<li class="mdl-list__item">\
					<figure class="mdl-color--light-blue-500 selectIcon" onclick="selectIcon(event)">\
						<img src="/assets/arrow.jpg">\
					</figure>\
				</li>\
			</div>\
		</aside>\
		<figcaption>\
			<button class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--raised mdl-button--accent" onclick="this.parentNode.parentNode.remove()">\
				<i class="material-icons left">delete</i>\
				удалить\
			</button>\
			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label is-focused">\
				<input type="text" name="item[avantages][][title]" id="item_avantages__title" class="mdl-textfield__input title" maxlength="20"/>\
				<label class="mdl-textfield__label" for="title">Заголовок:</label>\
			</div>\
			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label is-focused">\
				<input type="text" name="item[avantages][][description]" id="item_avantages__description" class="mdl-textfield__input description" maxlength="25"/>\
				<label class="mdl-textfield__label" for="description">Описание:</label>\
			</div>\
		</figcaption>';
	avant.classList.add('mdl-color--light-blue-400')
	avantages.appendChild(avant)
}
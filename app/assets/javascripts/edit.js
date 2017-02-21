function showmodal() { ( function() {
  'use strict';
  var dialogButton = document.querySelector('.dialog-button');
  var dialog = document.querySelector('#dialog');
  if (! dialog.showModal) {
      dialogPolyfill.registerDialog(dialog);
  }
  dialogButton.addEventListener('click', function() {
     dialog.showModal();
  });

  dialog.querySelector('.close')
  .addEventListener('click', function() {
    dialog.close();
  })

 }()
)}

function toggleNewPrice() {
	if ( newPriceToggler.classList.contains('is-checked') ) { newPrice.classList.remove('hidden') }
	else { newPrice.classList.add('hidden') }
}

function toggleNewIcon() {
	var newIconToggler = event.currentTarget
	var newIconSelector = event.currentTarget.parentNode.querySelector('#newIcon')

	function get_icons() {
	return $.ajax( { url: '/api/icons/select'} ).done( function(html) { return $(newIconSelector).append(html) } )
	}

	if ( newIconToggler.classList.contains('is-checked') ) { newIconSelector.classList.remove('hidden') }
	else { newIconSelector.classList.add('hidden') }
	if (! newIconSelector.classList.contains('is-updated') ) { get_icons(); newIconSelector.classList.add('is-updated') }
}

function selectIcon() {
	var aside = event.currentTarget.parentNode.parentNode.parentNode
	var newIconSource = event.currentTarget.querySelector('img').getAttribute('src')
	aside.querySelector('img').setAttribute('src', newIconSource)
	aside.querySelector('input').setAttribute('value', newIconSource)
}

function add_item() {
	var item = document.createElement("figure")
	item.innerHTML = '\
	\
		<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label is-focused">\
    	<input class="mdl-textfield__input" type="text" name="items[]" id="_url" />\
      <label class="mdl-textfield__label" for="url">Ссылка на товар в decathlon:</label>\
    </div>\
		<button class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--raised mdl-button--accent" onclick="this.parentNode.remove()">\
		  <i class="material-icons left">delete</i>удалить\
		</button>'

	item.id = 'enter_url'
	item.classList.add('mdl-color--light-blue-300', 'some_items')
	items.appendChild(item)
}

function add_avant() {
  var avant = document.createElement("figure")
  avant.innerHTML = '\
		<aside>\
		  <label for="icon">Иконка</label>\
		  <img src="/assets/arrow.jpg" alt="Arrow" />\
		</aside>\
		<figcaption>\
		  <input name="item[avantages][][icon]" type="hidden" value="arrow.jpg">\
		  <button class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--raised mdl-button--accent" onclick="this.parentNode.parentNode.remove()">\
		    <i class="material-icons left">delete</i>удалить\
		  </button>\
		  <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label is-focused" id="url">\
		    <input type="text" name="item[avantages][][title]" id="item_avantages__title" class="mdl-textfield__input title" />\
		    <label class="mdl-textfield__label" for="title">Заголовок (не более 20 символов):</label>\
		  </div>\
		  <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label is-focused" id="url">\
		  	<label class="mdl-textfield__label" for="description">Описание (не более 25 символов):</label>\
		    <input type="text" name="item[avantages][][description]" id="item_avantages__description" class="mdl-textfield__input description" />\
		  </div>\
		</figcaption>';
	avant.classList.add('mdl-color--blue-200')
	avantages.appendChild(avant)
}
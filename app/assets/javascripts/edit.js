function ToggleNewPrice() {
	if(NewPriceToggler.classList.contains('is-checked')) {
		NewPrice.classList.remove('hidden')
	}
	else {
		NewPrice.classList.add('hidden')
	};
}

function avant_add() {
  var avant = document.createElement("figure");
  avant.innerHTML = '\
		<aside>\
		  <label for="icon">Иконка</label>\
		  <img src="/assets/arrow.jpg" alt="Arrow" />\
		</aside>\
		<figcaption>\
		  <input name="item[avantages][][icon]" type="hidden" value="arrow.jpg">\
		  <button class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--raised mdl-button--accent" onclick="this.parentNode.parentNode.remove()">\
		    [x] удалить\
		  </button>\
		  <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label is-dirty" id="url">\
		    <input type="text" name="item[avantages][][title]" id="item_avantages__title" class="mdl-textfield__input title" />\
		    <label class="mdl-textfield__label" for="title">Заголовок</label>\
		  </div>\
		  <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label is-dirty" id="url">\
		  	<label class="mdl-textfield__label" for="description">Описание</label>\
		    <input type="text" name="item[avantages][][description]" id="item_avantages__description" class="mdl-textfield__input description" />\
		  </div>\
		</figcaption>';
	avant.classList.add('mdl-color--blue-200');
  avantages.appendChild(avant);
};

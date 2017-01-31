function avant_add() {
  var avant = document.createElement('figure');
  avant.innerHTML = 
    	'<aside>\
    		<img src="assets/arrow.jpg" alt="Arrow" />\
    	 </aside>\
    	 <figcaption>\
    		<a class="button-delete" onclick="this.parentNode.parentNode.remove()">[x] Удалить</a>\
    		<input name="item[avantages][][icon]" type="hidden" value="arrow.jpg">\
    		<label>Заголовок</label>\
    		<input class="title" name="item[avantages][][title]" type="text" value="ХАРАКТЕРИСТИКА">\
    		<label>Описание</label>\
    		<input class="description" name="item[avantages][][description]" type="text" value="описание">\
    	 </figcaption>';
  avants.appendChild(avant);
};

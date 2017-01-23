function avant_add() {
  var avant = document.createElement('figure');
  avant.innerHTML = 
    	'<aside>\
    		<img src="assets/arrow.jpg" alt="Arrow" />\
    		<input name="item[avantages][][new_icon]" type="file" id="item_new_icon" />\
    	</aside>\
    	<figcaption>\
    		<a id="avant_del" onclick="this.parentNode.parentNode.remove()">[x] Удалить</a>\
    		<input name="item[avantages][][icon]" type="hidden" value="arrow.jpg">\
    		<label>заголовок</label>\
    		<input class="title" name="item[avantages][][title]" type="text" value="ХАРАКТЕРИСТИКА">\
    		<label>описание</label>\
    		<input class="description" name="item[avantages][][description]" type="text" value="описание">\
    	</figcaption>';
  avants.appendChild(avant);
};
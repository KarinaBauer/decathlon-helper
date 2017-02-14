function avant_add() {
  var avant = document.createElement('figure');
  avant.innerHTML = '\
		<aside class="avant_icon">\
      <label for="______">Иконка</label>\
      <img src="/assets/arrow-ddb170c88b0e4a0be0deb884849ee4506dae90ffc0626acbf2044a3da0950cb2.jpg" alt="Arrow">\
		</aside>\
		<figcaption>\
			<a class="btn_rm mdl-button mdl-js-button mdl-button--raised mdl-button--accent" onclick="this.parentNode.parentNode.remove()">\
				[x] удалить\
			</a>\
			<input name="item[avantages][][icon]" type="hidden" value="arrow.jpg">\
			<label for="_________">Заголовок</label>\
			<input class="title" name="item[avantages][][title]" type="text" value="ЗАГОЛОВОК">\
			<label for="________">Описание</label>\
			<input class="description" name="item[avantages][][description]" type="text" value="описание">\
		</figcaption>';
  avants.appendChild(avant);
};

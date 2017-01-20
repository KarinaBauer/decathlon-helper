function avant_add() {
  var avant = document.createElement('figure');
    avant.innerHTML = '<aside><img src="/assets/arrow-ddb170c88b0e4a0be0deb884849ee4506dae90ffc0626acbf2044a3da0950cb2.jpg" alt="Arrow" /><input name="avantages[][new_icon]" type="file" id="item_new_icon" /></aside><figcaption><a id="avant_del" onclick="this.parentNode.parentNode.remove()">[x] Удалить</a><input name="avantages[][icon]" type="hidden" value="arrow.jpg"><label>заголовок</label><input class="title" name="avantages[][title]" type="text" value="ХАРАКТЕРИСТИКА"><label>описание</label><input class="description" name="avantages[][description]" type="text" value="описание"></figcaption>';
  avants.appendChild(avant);
};
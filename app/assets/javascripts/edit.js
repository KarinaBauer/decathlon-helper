function avant_add_clone() {
  var avant = document.getElementsByTagName('figure');
    avant = avant[0].cloneNode(true);
    //avant.querySelector('title').innerHTML = '';
  avants.appendChild(avant);
};


function avant_add() {
  var avant = document.createElement('figure');
    avant.innerHTML = '<aside><img src="/assets/arrow.jpg" alt="Arrow"><input name="avantages[][icon_new]" type="file" id="item_icon_new"></aside><figcaption><a id="avant_del" onclick="this.parentNode.parentNode.remove()">[x] Удалить характеристику</a><input name="avantages[][icon]" type="hidden" value="arrow.jpg"><label>заголовок</label><input class="title" name="avantages[][title]" type="text" value="ХАРАКТЕРИСТИКА"><label>описание</label><input class="description" name="avantages[][description]" type="text" value="описание"></figcaption>';
  avants.appendChild(avant);
};
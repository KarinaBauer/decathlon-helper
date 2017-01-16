function avant_add() {
  var avant = document.createElement('avant');
    avant.innerHTML = "<input name='avantages[][icon]' type='hidden' value='arrow.jpg'><label>заголовок</label><input name='avantages[][title]' type='text' value='ХАРАКТЕРИСТИКА'><label>описание</label><input name='avantages[][description]' type='text' value='описание'>";
  form.insertBefore(avant, submit);
};

function avant_del() {

};
function avant_add() {
  var avant = document.getElementsByTagName('avant');
    avant = avant[0].cloneNode(true);
    //avant.querySelector('title').innerHTML = '';
  form.insertBefore(avant, submit);
};

function avant_del() {

};
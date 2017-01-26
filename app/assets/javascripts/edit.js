function avant_add() {
  var avant = document.createElement('figure');
  avant.innerHTML = 
    	'<aside>\
    		<img src="assets/arrow.jpg" alt="Arrow" />\
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

function DropDown(el) {
    this.dropdown = el;
    this.placeholder = this.dropdown.children('span');
    this.opts = this.dropdown.find('ul.dropdown > li');
    this.val = '';
    this.index = -1;
    this.initEvents();
    }

DropDown.prototype = {
    initEvents : function() {
        var object = this;

        object.dropdown.on('click', function(event){
            $(this).toggleClass('active');
            return false;
        });

        object.opts.on('click',function(){
            var option = $(this);
            object.val = option.text();
            object.index = option.index();
            object.placeholder.text(object.val);
        });
    },

    getValue : function() {
        return this.val;
    },
    getIndex : function() {
        return this.index;
    }
}

$(function() {
    var dropdown = new DropDown( $('#dropdown') );

    $(document).click(function() {
    // all dropdowns
        $('.wrapper-dropdown').removeClass('active');
    });
});
//= require jquery
//= require jquery.turbolinks
//= require rails-ujs
//  require jquery_ujs
//= require mdlComponentHandler
//= require ./mdl/main
//= require_tree ./snippets
//= require turbolinks

function someElemsInit(){
	componentHandler.upgradeDom()
}

document.addEventListener('turbolinks:load', someElemsInit)
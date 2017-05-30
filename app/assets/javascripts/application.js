/*
*= require jquery
*= require jquery_ujs
*= require turbolinks
*= require turbolinks-compatibility
*= require jquery.mCustomScrollbar
*= require mdlComponentHandler
*= require_tree ./mdl
*= require_tree ./mylib
*/

document.addEventListener('turbolinks:load', function() { componentHandler.upgradeDom() })
$.turbo.use('turbolinks:load', 'turbolinks:request-start')
// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap
//= require jquery_ujs
//= require jquery-ui
//= require jquery-ui/autocomplete
//= require d3
//= require turbolinks
//= require components
//= require_tree .
var submitForm = function(e) {
  $(e).closest('form').submit();
}

var hide = function(e) {
  $(e).parent().parent().parent().slideUp(300, function() {
    $(e).parent().parent().parent().empty();
  });
}

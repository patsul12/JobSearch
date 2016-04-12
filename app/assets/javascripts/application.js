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

// WORKAROUND: submits the closest form. allows for updating of info through a html select.
var submitForm = function(e) {
  $(e).closest('form').submit();
}

// hides a job application when red x is clicked on index page.
var hide = function(e) {
  $(e).parent().parent().parent().slideUp(300, function() {
    $(e).parent().parent().parent().empty();
  });
}

// on application show, toggle more information for company ratings.
var toggleClosestRatingInfo = function(e) {
  $(e).siblings(".more-rating-info").slideToggle()
}

var toggleNewPosting = function() {
  $("#new-posting-form").slideToggle();
}

var showJobApplicationContactForm = function(id) {
  $("#job-application-"+ id +"-contact-form").slideToggle();
}

var showPostingDetails = function(e) {
  $(e).children('.posting-details').slideToggle();
}

// stars function used to display glassdoor overall company rating in a pretty format.
$.fn.stars = function() {
    return $(this).each(function() {
        // Get the value
        var val = parseFloat($(this).html());
        // Make sure that the value is in 0 - 5 range, multiply to get width
        var size = Math.max(0, (Math.min(5, val))) * 16;
        // Create stars holder
        var $span = $('<span />').width(size);
        // Replace the numerical value with stars
        $(this).html($span);
    });
}

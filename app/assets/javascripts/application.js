// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require moment
//= require fullcalendar
//= require daterangepicker
//= require_tree .

$( document ).on('turbolinks:load', function(){

$("a:first-child .course_box").css('animation', 'fadeInUp 1s ease-in-out')
$("a:nth-child(2) .course_box").css({
  'animation': 'fadeInUp 1s ease-in-out',
  'animation-delay': '.1s'})
$("a:last-child .course_box").css({
  'animation': 'fadeInUp 1s ease-in-out',
  'animation-delay': '.2s'})

var current_user = $("#my_current_level").text()

if (current_user != ""){

  if (current_user == "Entry Level"){
    $("a:first-child .course_box").find("i").addClass("fa fa-unlock-alt fa-3x")

    $("a:nth-child(2) .course_box, a:last-child .course_box").closest("a").click(function(e){
      e.preventDefault()
    })

    $("a:nth-child(2) .course_box, a:last-child .course_box").attr({
      "data-toggle": "tooltip",
      "data-placement": "bottom",
      "title": "You have to finish the previous course to unlock."})
    $('[data-toggle="tooltip"]').tooltip()

    $("a:last-child .course_box, a:nth-child(2) .course_box").find("i").addClass("fa fa-lock fa-3x")
  }else if (current_user == "Medium Level"){
    $("a:first-child .course_box").find("i").addClass("fa fa-unlock-alt fa-3x")

    $("a:nth-child(2) .course_box").find("i").addClass("fa fa-unlock-alt fa-3x")

    $("a:last-child .course_box").closest("a").click(function(e){
      e.preventDefault()
    })

    $( "a:last-child .course_box").attr({
      "data-toggle": "tooltip",
      "data-placement": "bottom",
      "title": "You have to finish the previous course to unlock."})
    $('[data-toggle="tooltip"]').tooltip()

    $("a:last-child .course_box").find("i").addClass("fa fa-lock fa-3x")
  }else if (current_user == "Advanced Level"){
    $("a:first-child .course_box").find("i").addClass("fa fa-unlock-alt fa-3x")

    $("a:nth-child(2) .course_box").find("i").addClass("fa fa-unlock-alt fa-3x")

    $("a:last-child .course_box").find("i").addClass("fa fa-unlock-alt fa-3x")
  }
}else{
  $(".access").addClass("fa fa-lock fa-3x")
  $(".row").find("a").click(function(e){
    e.preventDefault()
  })

  $("a:first-child .course_box, a:nth-child(2) .course_box, a:last-child .course_box").attr({
    "data-toggle": "tooltip",
    "data-placement": "bottom",
    "title": "Login to start your learning."})
  $('[data-toggle="tooltip"]').tooltip()
}
})
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

$("#course_1").css('animation', 'fadeInUp 1s ease-in-out')
$("#course_2").css({
  'animation': 'fadeInUp 1s ease-in-out',
  'animation-delay': '.1s'})
$("#course_3").css({
  'animation': 'fadeInUp 1s ease-in-out',
  'animation-delay': '.2s'})

var current_user = $("#my_current_level").text()

if (current_user != ""){

  if (current_user == "Entry Level"){
    $("#course_1").find("i").addClass("fa fa-unlock-alt fa-3x")

    $("#course_2, #course_3").closest("a").click(function(e){
      e.preventDefault()
    })

    $("#course_2, #course_3").attr({
      "data-toggle": "tooltip",
      "data-placement": "bottom",
      "title": "You have to finish the previous course to unlock."})
    $('[data-toggle="tooltip"]').tooltip()

    $("#course_3, #course_2").find("i").addClass("fa fa-lock fa-3x")
  }else if (current_user == "Medium Level"){
    $("#course_1").find("i").addClass("fa fa-unlock-alt fa-3x")

    $("#course_2").find("i").addClass("fa fa-unlock-alt fa-3x")

    $("#course_3").closest("a").click(function(e){
      e.preventDefault()
    })

    $( "#course_3").attr({
      "data-toggle": "tooltip",
      "data-placement": "bottom",
      "title": "You have to finish the previous course to unlock."})
    $('[data-toggle="tooltip"]').tooltip()

    $("#course_3").find("i").addClass("fa fa-lock fa-3x")
  }else if (current_user == "Advanced Level"){
    $("#course_1").find("i").addClass("fa fa-unlock-alt fa-3x")

    $("#course_2").find("i").addClass("fa fa-unlock-alt fa-3x")

    $("#course_3").find("i").addClass("fa fa-unlock-alt fa-3x")
  }
}else{
  $(".access").addClass("fa fa-lock fa-3x")
  $(".row").find("a").click(function(e){
    e.preventDefault()
  })

  $("#course_1, #course_2, #course_3").attr({
    "data-toggle": "tooltip",
    "data-placement": "bottom",
    "title": "Login to start your learning."})
  $('[data-toggle="tooltip"]').tooltip()
}
})
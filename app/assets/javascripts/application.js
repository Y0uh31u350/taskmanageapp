// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require_tree .

$(document).ready(function(){
  $('span.sublist').on('click', function(){
    $(this).siblings('ul').toggleClass('hidden');
  });
});

$(document).ready(function(){
  $('span.sublist').on('click', function(){
    $(this).children('i').toggleClass('fa-rotate-90');
  });
});

$(document).ready(function(){
  $('[data-toggle="tooltip"]').tooltip();
});

/*
$(function() {
  $("input[type=checkbox]").click(function() {
    $.post('/projects/'+$(this).data('project_id')+'/tasks/'+$(this).data('id')+'/toggle')
  });
});
*/

$(function() {
  $.ajax({
      url: location.protocol + '//' + location.host + '/tasks/toggle',
      type: "POST",
      data: "",
      dataType: "json",
      })
});

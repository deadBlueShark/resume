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
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require rails-ujs
//= require jquery-ui
//= require cocoon

//
/* From third party vendors */
//= require sweetalert2/dist/sweetalert2
//= require holder.min
//= require html5sortable

/* Custom js */
//= require google_map
//= require_tree .

$(document).ready(function() {
  $('.masthead-brand').on('click', function() {
    swal(
      'The Internet?',
      'That thing is still around?',
      'question'
    );
  });

  $('*').find("a[href='"+window.location.pathname+"']").addClass("active");

});

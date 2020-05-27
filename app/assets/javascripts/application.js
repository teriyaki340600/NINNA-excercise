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
//= require jquery_ujs
//= require popper
//= require bootstrap
//= require_tree .
$(function() {
  function readURL(input) {
      if (input.files && input.files[0]) {
      var reader = new FileReader();
      reader.onload = function (e) {
  $('#img_prev').attr('src', e.target.result);
      }
      reader.readAsDataURL(input.files[0]);
      }
  }
  $("#user_img").change(function(){
      readURL(this);
  });

//　select box
  return (function() {
    var replaceChildrenOptions, replaceSelectOptions;
    replaceSelectOptions = function($select, results) {
      $select.html($('<option>'));
      return $.each(results, function() {
        var option;
        option = $('<option>').val(this.id).text(this.name);
        return $select.append(option);
      });
    };
    replaceChildrenOptions = function() {
      var $selectChildren, childrenPath;
      childrenPath = $(this).find('option:selected').data().childrenPath;
      console.log($(this).find('option:selected').data())
      $selectChildren = $(this).closest('form').find('.select-children');
      if (childrenPath != null) {
        console.log('1111')
        console.log(childrenPath)
        return $.ajax({
          url: childrenPath,
          dataType: "json",
          success: function(results) {
            return replaceSelectOptions($selectChildren, results);
          },
          error: function(XMLHttpRequest, textStatus, errorThrown) {
            console.error("Error occurred in replaceChildrenOptions");
            console.log("XMLHttpRequest: " + XMLHttpRequest.status);
            console.log("textStatus: " + textStatus);
            return console.log("errorThrown: " + errorThrown);
          }
        });
      } else {
        return replaceSelectOptions($selectChildren, []);
      }
    };
    return $('.select-parent').on({
      'change': replaceChildrenOptions()
    });
  })();
});

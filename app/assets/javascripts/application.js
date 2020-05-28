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

//　select box(camera)
  return (function () {
    console.log('eeeeeee');
    var replaceChildrenOptions, replaceSelectOptions;
    replaceSelectOptions = function ($select, results) {
      $select.html($('<option>'));
      $select.children().remove();
      return $.each(results, function () {
        var option;
        option = $('<option>').val(this.id).text(this.name);
        return $select.append(option);
      });
    };
    replaceChildrenOptions = function () {
      var $selectChildren;
      $selectChildren = $('#photo_camera_id');
      const element = document.getElementById('photo_camera_maker_id');
      const index = element.selectedIndex;
      // 何も選択されていない場合は早期リターンする
      if (index === 0) {
        return $selectChildren.children().remove();
      };
      const childrenPath = element.options[index].dataset.childrenPath;
      // replaceSelectOptions が jquery object を要求しているため
      if (childrenPath != null) {
        return $.ajax({
          url: childrenPath,
          dataType: "json",
          success: function (results) {
            return replaceSelectOptions($selectChildren, results);
          },
          error: function (XMLHttpRequest, textStatus, errorThrown) {
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
    const element = document.getElementById('photo_camera_maker_id');
    element.addEventListener('change', () => {
      replaceChildrenOptions();
    })
  })();
});

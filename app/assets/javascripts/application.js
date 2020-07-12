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
    var replaceChildrenOptions, replaceSelectOptions; //varは変数の宣言
    replaceSelectOptions = function ($select, results) {
    //関数()の引数として「$select」と「results」を記述
    //慣例的にjQueryのコードでは、ある変数がjQueryオブジェクトへの参照を代入する変数名であることを
    //わかりやすくするため、$を接頭辞として使っている
      $select.html($('<option>'));
      //「html()」を使い任意のHTML要素を取得したり意図的に要素を追加・書き換えできる。
      //今回は$select要素内に$('<option>')を出力している
      //$()は「jQuery呼び出し」
      $select.children().remove();
      //$selectの子要素を取得し削除している
      return $.each(results, function () {
        //eachメソッドの第1引数に配列やオブジェクトを指定。配列やオブジェクトのときだけ$.がつく。今回はresults
        //resultsの中身がreturnで戻ってくる
        var option;
        option = $('<option>').val(this.id).text(this.name);
        //「val()」は、HTMLタグ内に記述されているvalue属性を取得したり変更することができるメソッド
        //valueのidを取得
        //「text()」は、HTML要素内にあるテキスト情報を取得・追加・変更することが可能なメソッド
        //Nikonとかを取得
        return $select.append(option);
        //【 対象要素.append( 追加したい要素 ) 】
      });
    };
    replaceChildrenOptions = function () {
      var $selectChildren;
      $selectChildren = $('#photo_camera_id');
      //idがphoto_camera_idのものをjquery呼び出し
      const element = document.getElementById('photo_camera_maker_id');
      //constで値書き換えを禁止した変数を宣言
      //JavaScript上で「document」オブジェクトを使えば、好きなHTML要素の情報を取得したり、新しくHTML要素できる
      //対象範囲をdocumentにすることで全体から指定
      //getElementByIdで任意のHTMLタグで指定したIDにマッチするドキュメント要素を取得
      const index = element.selectedIndex;
      //セレクトボックスの選択中のインデックス番号を取得する
      if (index === 0) { // 何も選択されていない場合は早期リターンする
        //===は==より厳密に透過か判定
        return $selectChildren.children().remove();
        //何も選択されていないときはchildrenを非表示
      };
      const childrenPath = element.options[index].dataset.childrenPath;
      //data-children-pathというデータ属性の取得
      if (childrenPath != null) {
        //なにか選択されたとき
        // replaceSelectOptions が jquery object を要求しているため
        return $.ajax({ //jqueryのajaxの書き方
          url: childrenPath, //どのサーバーに対して？
          dataType: "json",
          success: function (results) { //通信状態に問題がないか
            return replaceSelectOptions($selectChildren, results);
            //問題がなければ上記を返す
          },
          error: function (XMLHttpRequest, textStatus, errorThrown) {
            console.error("Error occurred in replaceChildrenOptions");
            console.log("XMLHttpRequest: " + XMLHttpRequest.status);
            console.log("textStatus: " + textStatus);
            return console.log("errorThrown: " + errorThrown);
          }
        });
      }
      else { //中身無しで返す
        return replaceSelectOptions($selectChildren, []);
      }
    };
    const element = document.getElementById('photo_camera_maker_id');
    element.addEventListener('change', () => {
      replaceChildrenOptions();
    })
  })();
});

select =[];
check = [];
check[0] = [];
check[1] = [];
check[2] = [];

function get_variable() {
document.forms['to_battle'].elements["select"].value = select;
}

$(document).ready(function(){
$("p").css("color", "blue");
});

$(document).ready(function(){
  var num = 0;
  var index = 0;
  var pos = 50;

  $('span#top').on('click','img', function(){
    //上の画像をクリックした場合
    if ($(this).hasClass("selected")) {
      $(this).toggleClass("selected");
      $(this).css('position','static');
      id = $(this).attr("id");
      index = select.indexOf(id);  //クリックした画像のidを取得
      select.splice(index,1);  //選択画像のidを入れた配列から削除
      for (var i=0; i<select.length; i++) {  //画像を左に詰める
        pos = 150*i + 50;
        $("img#"+select[i]).css('left',pos);
      }
      num = num -1;
    //下の画像をクリックした場合
    } else if (num <= 5) {
      pos = 150*num + 50;
      $(this).toggleClass("selected");
      $(this).css('position','fixed');
      $(this).css('top','30px');
      $(this).css('left',pos);
      id = $(this).attr("id");
      select.push(id);
      num = num + 1;
    }
  });
  $('.color').css('color','red');
});

$(document).ready(function(){
  var position = 50;
  var number = 0;
  var memo = 0;
  var turn = 0;
  $('span#battle').on('click','img.command',function(){
    if ($(this).hasClass("checked")) {
      $(this).toggleClass("checked");
      $(this).css('position','static');
      imageid = $(this).attr("id");
      memo = check[turn].indexOf(imageid);
      check[turn].splice(memo,1);  
      for (var i=0; i<check[turn].length; i++) {
        position = turn * 300 + 50 * i + 50;
        $("img#"+check[turn][i]).css('left',position);
      }
      number = number - 1;
    } else if(number <= 4) {
      position = turn * 300 + number * 50 + 50;
      $(this).toggleClass("checked");
      $(this).css('position','fixed')
      $(this).css('top','30px')
      $(this).css('left',position);
      imageid = $(this).attr("id");
      check[turn].push(imageid);
      number = number+1;
    }
  });
  $('span#battle').on('click','span.next',function() {
    number = 0;
    $('span.turn'+turn).css('background-color','transparent');
    turn = turn+1;
    $('span.turn'+turn).css('background-color','#ff9900');
  });
  $('span#battle').on('click','span.reset',function() {
    $('span.turn'+turn).css('background-color','transparent');
    turn = 0;
    $('span.turn'+turn).css('background-color','#ff9900');
    number = 0;
    for(var i=0;i<check[0].length; i++) {
      $("img#"+check[0][i]).removeClass("checked");
      $("img#"+check[0][i]).css('position','static');
    }
    for(var i=0;i<check[1].length; i++) {
      $("img#"+check[1][i]).removeClass("checked");
      $("img#"+check[1][i]).css('position','static');
    }
    for(var i=0;i<check[2].length; i++) {
      $("img#"+check[2][i]).removeClass("checked");
      $("img#"+check[2][i]).css('position','static');
    }
    check[0] = [];
    check[1] = [];
    check[2] = [];
  });
});

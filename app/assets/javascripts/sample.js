select =[];
selecter =[];
check = [];
check[0] = [];
check[1] = [];
check[2] = [];


function get_variable() {
document.forms['to_battle'].elements["select"].value = select;
}
function one() {
select[0] = document.orderchange.select1.options[0].value;
select[1] = document.orderchange.select1.options[1].value;
select[2] = document.orderchange.select1.options[2].value;
select[3] = document.orderchange.select2.options[0].value;
select[4] = document.orderchange.select2.options[1].value;
select[5] = document.orderchange.select2.options[2].value;
var ele1 = $("#select1").prop("selectedIndex");
var ele2 = $("#select2").prop("selectedIndex")+3;
var swap = select[ele1];
select[ele1] = select[ele2];
select[ele2] = swap;
document.forms['orderchange'].elements["select"].value = select;
}


$(document).ready(function(){
  var num = 0;
  var index = 0;
  var pos = 50;

  $('span#top').on('click','img', function(){
    if($(this).hasClass("support")) {
      id = $(this).attr("id").slice(1);
    } else  {
      id = $(this).attr("id");
    }
    //上の画像をクリックした場合
    if ($(this).hasClass("selected")) {
      if(select.indexOf(id) != select.lastIndexOf(id)) {  //上に２つあるとき
        $(this).toggleClass("selected");
        $(this).css('position','static');
        id = $(this).attr("id");
        index = selecter.indexOf($(this).attr("id"));
        select.splice(index,1);  //選択画像のidを入れた配列から削除
        selecter.splice(index,1);
        for (var i=0; i<selecter.length; i++) {  //画像を左に詰める
          pos = 150*i + 50;
          $("img#"+selecter[i]).css('left',pos);
        }
        num = num -1;
      } else { //上に１つのとき
        $(this).toggleClass("selected");
        $(this).css('position','absolute');
        $(this).css('top','-72px');
        $(this).css('left','0px');
        id = $(this).attr("id");
        index = selecter.indexOf($(this).attr("id"));
        select.splice(index,1);
        selecter.splice(index,1);
        for (var i=0; i<selecter.length; i++) {  //画像を左に詰める
          pos = 150*i + 50;
          $("img#"+selecter[i]).css('left',pos);
        }
        num = num -1;
      }
      //下の画像をクリックした場合
      } else if (num <= 5) {
      pos = 150*num + 50;
      $(this).toggleClass("selected");
      $(this).css('position','fixed');
      $(this).css('top','30px');
      $(this).css('left',pos);
      id = $(this).attr("id");
      if($(this).hasClass("support")) {
        select.push(id.slice(1));
      } else {
        select.push(id);
      }
      selecter.push(id);
      num = num + 1;
    }
  });
});

$(document).ready(function(){
  if($("#id1").data("np1") <100){
    $(".c5").attr("disabled",true)
    $("#c5 img").css("opacity","0")
    $("#c5 img:first").css("opacity","0.4")

  }
  if($("#id1").data("np2") <100){
    $(".c6").attr("disabled",true)
    $("#c6 img").css("opacity","0")
    $("#c6 img:first").css("opacity","0.4")
  }
  if($("#id1").data("np3") <100){
    $(".c7").attr("disabled",true)
    $("#c7 img").css("opacity","0")
    $("#c7 img:first").css("opacity","0.4")
  }
  $("input[name=card]").css("display","none")
  $("input[name=card]").click(function(){
      var $count = $("input[name=card]:checked").length;
      var $not = $('input[name=card]').not(':checked')

        //コマンドカード整列
      for(var i=0;i<8;i++){
        if($(this).attr("class") == "c"+i){//どのカードか

          if($("#id2").data('select'+i) == 0){
            //まだ選択されていない場合
            if($("#id2").data('select0')!=1 && $("#id2").data('select1')!=1 && $("#id2").data('select2')!=1 && $("#id2").data('select3')!=1 && $("#id2").data('select4')!=1 && $("#id2").data('select5')!=1 && $("#id2").data('select6')!=1 && $("#id2").data('select7')!=1){
              $("#id2").data('select'+i,1);
              $(".c"+i+"1").css('z-index','5');
            }else if($("#id2").data('select0')!=2 && $("#id2").data('select1')!=2 && $("#id2").data('select2')!=2 && $("#id2").data('select3')!=2 && $("#id2").data('select4')!=2 && $("#id2").data('select5')!=2 && $("#id2").data('select6')!=2 && $("#id2").data('select7')!=2){
              $("#id2").data('select'+i,2);
              $(".c"+i+"2").css('z-index','5');
            }else{
              $("#id2").data('select'+i,3);
              $(".c"+i+"3").css('z-index','5');
            }
          }else{
            //すでに選択されていた場合
            $("#id2").data('select'+i,0);
            $(".c"+i+"1").css('z-index','1');
            $(".c"+i+"2").css('z-index','1');
            $(".c"+i+"3").css('z-index','1');
          }
        }
      }
          //チェックが3つ付いたら、チェックされてないチェックボックスにdisabledを加える
      if($count >= 3) {
          $not.attr("disabled",true);
          if($("input[name=enemy]:checked").length == 1){
            $("input[type=submit]").attr("disabled",false);
          }
      }else{
          //3つ以下ならisabledを外す
          $not.attr("disabled",false);
          $("input[type=submit]").attr("disabled",true);
      }
      if($("#id1").data("np1") <100){
        $(".c5").attr("disabled",true)
      }
      if($("#id1").data("np2") <100){
        $(".c6").attr("disabled",true)
      }
      if($("#id1").data("np3") <100){
        $(".c7").attr("disabled",true)
      }
  });
  $("input[name=enemy]").click(function(){
      var $count2 = $("input[name=enemy]:checked").length;
      var $not2 = $('input[name=enemy]').not(':checked')

          //チェックが1つ付いたら、チェックされてないチェックボックスにdisabledを加える
      if($count2 >= 1) {
          $not2.attr("disabled",true);
          if($("input[name=card]:checked").length == 3){
            $("input[type=submit]").attr("disabled",false);
          }
      }else{
          //0ならdisabledを外す
          $not2.attr("disabled",false);
          $("input[type=submit]").attr("disabled",true);
      }
  });
  /*  var position = 50;
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
    */
  /*
  $('span#battle').on('click','span.next',function() {
    if(turn<=1){
    number = 0;  //選択されているコマンドカードの数
    $('span.turn'+turn).css('background-color','transparent');
    turn = turn+1;
    $('span.turn'+turn).css('background-color','#ff9900');
    } else {

    }
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
  $('span#battle').on('click','#cal td',function(){
    np_sum = 0;
    $(this).toggleClass("cal");
    $('td.cal').each(function() {
      ele = $(this).attr("id");
      np_sum = np_sum + parseFloat(ele);
    });
    target = document.getElementById("np_sum");
    target.innerHTML = np_sum.toFixed(2);
  });
  $('span#battle').on('click','span.npreset1',function(){
    np_sum = 0;
    $('#cal td').removeClass("cal");
    target = document.getElementById("np_sum");
    target.innerHTML = np_sum.toFixed(2);
  });
  $('span#battle').on('click','#cal2 td',function(){
    np_sum2 = 0;
    $(this).toggleClass("cal2");
    $('td.cal2').each(function() {
      ele2 = $(this).attr("id");
      np_sum2 = np_sum2 + parseFloat(ele2);
    });
    target = document.getElementById("np_sum2");
    target.innerHTML = np_sum2.toFixed(2);
  });
  $('span#battle').on('click','span.npreset2',function(){
    np_sum2 = 0;
    $('#cal2 td').removeClass("cal2");
    target = document.getElementById("np_sum2");
    target.innerHTML = np_sum2.toFixed(2);
  });
  $('span#battle').on('click','#cal3 td',function(){
    np_sum3 = 0;
    $(this).toggleClass("cal3");
    $('td.cal3').each(function() {
      ele3 = $(this).attr("id");
      np_sum3 = np_sum3 + parseFloat(ele3);
    });
    target = document.getElementById("np_sum3");
    target.innerHTML = np_sum3.toFixed(2);
  });
  $('span#battle').on('click','span.npreset3',function(){
    np_sum3 = 0;
    $('#cal3 td').removeClass("cal3");
    target = document.getElementById("np_sum3");
    target.innerHTML = np_sum3.toFixed(2);
  });
*/
});

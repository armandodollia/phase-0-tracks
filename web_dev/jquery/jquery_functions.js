$(document).ready(function(){
  $("#list_changer").click(function(){
    $("li").css("color", "red");
  });

  $(".test").hover(function(){
    $(this).css("background-color", "grey");
  }, 
  function(){
    $(this).css("background-color", "white");
  });
});
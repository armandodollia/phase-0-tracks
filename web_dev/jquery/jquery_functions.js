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

  $("h5").on("click", function(){
    $(this).hide();
  });

  $("li").on("click", function(){
    $(this).css("color", "black");
  });
});
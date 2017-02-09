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

  $("h5").on({
    click: function(){
      $(this).hide();
    },
    mouseenter: function(){
      $(this).css({'font-size': '150%', 'color': 'red'});
    },
    mouseleave: function(){
      $(this).css('font-size', '100%');
    }
  });

  $("li").on("click", function(){
    $(this).css("color", "black");
  });

  $("#gibberish_toggle").click(function(){
    $("#gibberish").toggle("slow");
  });
});
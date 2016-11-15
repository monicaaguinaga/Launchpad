

$(document).ready(function(){

  $(".event_description").hide();
  $(".description_title").show();

  $('.description_title').click(function(e){
    e.preventDefault();
    $(".event_description").slideToggle();
  });

});

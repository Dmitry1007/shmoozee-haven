$(document).ready(function(){
  $('.image_rapper').mouseenter(function() {
       $(this).children('.text_title').show();

       $(this).children(":first").animate({
           opacity: 0.5
       });
   });

   $('.image_rapper').mouseleave(function() {
       $(this).children('.text_title').hide();

       $(this).children(":first").animate({
           opacity: .9
       });
   });
});

$('.expandable').on('click', function(){
  $(this).toggleClass('closed');
});

$('.complete').on('click', function(){
  var quest = $(this)
    $.ajax({
      type:'POST',
      url: '/quests/' + quest.attr("quest") + '/user_quests/' + quest.attr(
        "user_quest") + '/complete'
    }).success(function(){
      $('#myModal' + quest.attr('user_quest')).foundation('reveal', 'close');
      $('#' + quest.attr('user_quest')).hide();
      $('.completed').prepend($('#' + quest.attr('user_quest')).show());
      console.log("Triumph");
  });
});
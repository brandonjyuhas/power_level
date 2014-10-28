$('.new-quest').on('click', function(){
  var quest = $(this);
    $.ajax({
      type:'POST',
      url: '/quests/' + quest.attr("quest") + '/user_quests',
    }).success(function(){
    quest.parent().addClass('accepted');
  });
});
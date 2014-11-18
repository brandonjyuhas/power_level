$('.upvote').on('click', function(){
  quest = $(this);
  $.ajax({
      type:'PUT',
      //  Change user-quest to complete
      url: '/quests/' + quest.attr("quest_id") + '/like'
    }).success(function(data){
      // Test to see whether the user successfully increased the current experience points
      if (data > $('#current-xp-' + quest.attr("quest_id")).html()){
        // If so, change it and send a notification
        $('#current-xp-' + quest.attr("quest_id")).html(data);
        toastr.success('You upvoted this quests experience!');
      }
  });
});

$('.downvote').on('click', function(){
  quest = $(this);
  $.ajax({
      type:'PUT',
      //  Change user-quest to complete
      url: '/quests/' + quest.attr("quest_id") + '/dislike'
    }).success(function(data){
      // Test to see whether the user successfully decreased the current experience points
      if (data < $('#current-xp-' + quest.attr("quest_id")).html()){
        // If so, change it and send a notification
        $('#current-xp-' + quest.attr("quest_id")).html(data);
        toastr.success('You downvoted this quests experience!');
      }
  });
});

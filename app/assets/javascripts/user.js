// Handle closing quest tabs on user page
$('.expandable').on('click', function(){
  $(this).toggleClass('closed');
});


$('.complete').on('click', function(){
  var quest = $(this)
    $.ajax({
      type:'POST',
      //  Change user-quest to complete
      url: '/quests/' + quest.attr("quest") + '/user_quests/' + quest.attr(
        "user-quest") + '/complete'
    }).success(function(data){
      console.log(data);
      // Pull data from modal attributes
      currentLevel = $('#level').html();
      console.log(currentLevel);
      if(data[0] > parseInt(currentLevel)){
        alert('Level Up!');
      }
      $('#myModal' + quest.attr('user-quest')).foundation('reveal', 'close');
      $('.reveal-modal-bg').hide();
      // Hacky Catch-All for closing the modal
      $('#' + quest.attr('user-quest')).hide();
      // Level XP to XP
      $('#xp').html(data[2]);
      // Update Level to Level
      $('#level').html(data[0]);
      // Update XP-Level to XP-Level
      $('#xp-level').html(data[1]);
      // Update Next-Level to Next-Level
      $('#next-level').html(data[0] + 1);
      // Move Completed Quest to top of user-quest
      $('.completed').prepend($('#' + quest.attr('user-quest')).show());
  });
});

$('.close-reveal-modal').on('click', function(){
  // Hacky Catch-All for closing the modal
  $('.reveal-modal-bg').hide();
});

// Select User Icon
$('.user-icon-selector').on('click', function(){
  $('.user-icon-selector').removeClass('selected-icon');
  $(this).addClass('selected-icon');
  $('#user_icon_url').val($(this).attr('src'));
})
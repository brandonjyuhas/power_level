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
    }).success(function(){
      // Pull data from modal attributes
      $('#myModal' + quest.attr('user-quest')).foundation('reveal', 'close');
      $('.reveal-modal-bg').hide();
      // Hacky Catch-All for closing the modal
      $('#' + quest.attr('user-quest')).hide();
      // Add XP to user sidebar
      $('#xp').html(parseInt($('#xp').html()) + parseInt($(quest.attr('quest-xp'))['selector']));
      // Move Completed Quest to top of user-quest
      $('.completed').prepend($('#' + quest.attr('user-quest')).show());
  });
});

$('.close-reveal-modal').on('click', function(){
  // Hacky Catch-All for closing the modal
  $('.reveal-modal-bg').hide();
});
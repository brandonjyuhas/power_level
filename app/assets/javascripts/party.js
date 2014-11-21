// Create New Party
$('#createParty').on('click', function(evt){
  evt.preventDefault()

  var partyName = $("input[name='name']").val();

  $.ajax({
    type: 'POST',
    url: '/parties',
    data: {party: {name: partyName}}
    }).success(function(data){
      $('#parties').append(
        "<div class='party large-12 columns'><div class='large-2 columns expanded-height add-to-party' party='" + data["id"] + "'><button class='radius button'>" + data["name"] + "</button></div><div class='large-10 columns'><div class='party-user-display'><img src='" + data['users'][0]["icon_url"] + "' class='party-image' />" + data['users'][0]["username"] + "</div></div>"
        )
      toastr.success('Party Created!');
      $('#newPartyModal').foundation('reveal', 'close');
      $('.reveal-modal-bg').hide();
      $('#partyModal').foundation('reveal', 'open');
      addToParty();
    })
});

// Add the specified user to the party modal for referencing in UserParty creation
var addToParty = function(){
  $('.open-party').on('click', function(){
  selectedUserId = $(this).attr('user')
  $('#partyModal').attr('user', selectedUserId);
});

$('.add-to-party').on('click', function(){
  target = $(this).next().eq(0);
  party = $(this).attr('party');
  user = $('#partyModal').attr('user');
  $.ajax({
    type: 'POST',
    url: '/user_parties',
    data: { user_party: {
      party_id: party,
      user_id: user
    }}
  }).success(function(data){
    console.log(data["username"]);
    target.prepend("<div class='party-user-display'><img src='" + data["icon_url"] + "' class='party-image' />" + data["username"] + "</div>");
    toastr.success('User Added!');
  })
});};

addToParty();

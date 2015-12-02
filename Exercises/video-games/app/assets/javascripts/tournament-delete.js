function deleteTournament(event){
  var request = $.ajax({
      url: '/api/tournaments/' + $(event.currentTarget).val(),
      type: 'DELETE',
      success: location.reload(),
    });

    event.preventDefault();
}

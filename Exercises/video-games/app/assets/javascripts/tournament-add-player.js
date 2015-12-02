function showAddPlayerForm(event) {
    tournament_id = $(event.currentTarget).val();
    $.ajax({
        url: '/api/players.json',
        type: 'GET',
        success: function appendOptions(data) {
            $('#js-player').empty();
            data.forEach(function(event) {
                $('#js-player').append(
                  '<option data-tournament="'+ tournament_id + '">' + event.name + '</option>'
                );
            });
            $('.js-modal-registration').modal('show', 300);
        },
    });
}

function registerPlayer(event) {
    event.preventDefault();
    var tournamentId = $(event.currentTarget).find('option:selected').data('tournament');
    var playerId = $('.js-player').val();
    var data = {'player_id': playerId, 'tournament_id': tournamentId}
    var request = $.post('/api/tournaments/' + tournamentId + '/add_player', data)
    // $.ajax({
    //     url: 'api/players.json',
    //     type: 'POST',
    //     data: {player_id: playerId, tournament_id: tournamentId},
    // });
}

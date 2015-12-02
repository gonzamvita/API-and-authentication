function buildTourneyHtml (tournament) {
  return '\
    <li class="js-tournament-li">\
      <a href="/tournaments/' + tournament.id + '">' + tournament.name + '</a>\
      <button class="btn btn-danger" data-hook="tourney-delete" type="submit"'
      + ' name="tournament" value="'
      +  tournament.id + '">Delete</button>\
      <button class="btn btn-primary" data-hook="registration"'
      + ' name="registration" value="'
      +  tournament.id + '">Registration</button>\
    </li>\
  '
}

angular.module("ionicstarter")

.directive "awayTeamNickname", (TeamFactory) ->

  return {
    restrict: 'EAC'
    link: (sc, el) ->
      name = TeamFactory.getAwayTeam()
      el.text(name.nickname)
  }

.directive "awayTeamMascot", (TeamFactory) ->

  return {
    restrict: 'EAC'
    link: (sc, el) ->
      name = TeamFactory.getAwayTeam()
      el.text(name.mascot)
  }

.directive "awayTeamClass", (TeamFactory) ->

  return {
    restrict: 'EAC'
    link: (sc, el) ->
      name = TeamFactory.getAwayTeam()
      el.addClass(name.class)
  }

.directive "awayTeamImageRegular", (TeamFactory) ->

  return {
  restrict: 'EAC'
  link: (sc, el) ->
    name = TeamFactory.getAwayTeam()
    el.html('<img src="img/teams/away/' + name.logo + '.png" />')
  }

.directive "awayTeamImage", (TeamFactory) ->

  return {
    restrict: 'EAC'
    link: (sc, el) ->
      active = TeamFactory.getActiveTeam()
      name = TeamFactory.getAwayTeam()

      if active.class == name.class
        el.html('<img src="img/teams/away/' + name.logo + '.png" />')
      else
        el.html('<img src="img/teams/away/' + name.logo + '-bw.png" />')
  }

.directive "awayTeamActiveClass", (TeamFactory) ->

  return {
    restrict: 'EAC'
    link: (sc, el) ->
      active = TeamFactory.getActiveTeam()
      name = TeamFactory.getAwayTeam()

      if active.class == name.class
        el.removeClass('inactive')
        el.addClass('active')
      else
        el.removeClass('active')
        el.addClass('inactive')
  }

.directive "awayTeamScore", (TeamFactory) ->

  return {
    restrict: 'EAC'
    link: (sc, el) ->
      points = TeamFactory.getAwayPoints()

      if points < 10
        el.text('0' + points)
      else
        el.text(points)
  }

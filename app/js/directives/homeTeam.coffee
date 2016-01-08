angular.module("ionicstarter")

.directive "homeTeamNickname", (TeamFactory) ->

  return {
    restrict: 'EAC'
    link: (sc, el) ->
      name = TeamFactory.getHomeTeam()
      el.text(name.nickname)
  }

.directive "homeTeamMascot", (TeamFactory) ->

  return {
    restrict: 'EAC'
    link: (sc, el) ->
      name = TeamFactory.getHomeTeam()
      el.text(name.mascot)
  }

.directive "homeTeamClass", (TeamFactory) ->

  return {
    restrict: 'EAC'
    link: (sc, el) ->
      name = TeamFactory.getHomeTeam()
      el.addClass(name.class)
  }

.directive "homeTeamImageRegular", (TeamFactory) ->

  return {
  restrict: 'EAC'
  link: (sc, el) ->
    name = TeamFactory.getHomeTeam()
    el.html('<img src="img/teams/home/' + name.logo + '.png" />')
  }

.directive "homeTeamImage", (TeamFactory) ->

  return {
    restrict: 'EAC'
    link: (sc, el) ->
      active = TeamFactory.getActiveTeam()
      name = TeamFactory.getHomeTeam()

      if active.class == name.class
        el.html('<img src="img/teams/home/' + name.logo + '.png" />')
      else
        el.html('<img src="img/teams/home/' + name.logo + '-bw.png" />')
  }

.directive "homeTeamActiveClass", (TeamFactory) ->

  return {
    restrict: 'EAC'
    link: (sc, el) ->
      active = TeamFactory.getActiveTeam()
      name = TeamFactory.getHomeTeam()

      if active.class == name.class
        el.removeClass('inactive')
        el.addClass('active')
      else
        el.removeClass('active')
        el.addClass('inactive')
  }

.directive "homeTeamScore", (TeamFactory) ->

  return {
    restrict: 'EAC'
    link: (sc, el) ->
      points = TeamFactory.getHomePoints()

      if points < 10
        el.text('0' + points)
      else
        el.text(points)
  }

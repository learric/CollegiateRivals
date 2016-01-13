angular.module("ionicstarter")

.directive "activeTeamHeadline", (TeamFactory) ->
  
  return {
    restrict: 'EAC'
    link: (sc, el) ->
      team = TeamFactory.getActiveTeam()
      el.html('<h2 class="' + team.class + '">' + team.nickname + '</h2>')
  }

.directive "activeTeamSlogan", (TeamFactory) ->

  return {
    restrict: 'EAC'
    link: (sc, el) ->
      team = TeamFactory.getActiveTeam()
      el.text(team.slogan)
  }

.directive "activeTeamClass", (TeamFactory) ->

  return {
    restrict: 'EAC'
    link: (sc, el) ->
      team = TeamFactory.getActiveTeam()
      el.addClass(team.class)
  }

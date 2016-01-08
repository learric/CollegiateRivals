angular.module("ionicstarter")

.controller "InterludeController", (SettingsFactory, ClockFactory, AdvertFactory, TeamFactory, $scope, $state, $log) ->

  $log.log 'activate interlude controller'

  # *********
  # rename this for clarity between controllers
  # *********

  interlude = this

  gameTime = SettingsFactory.getGameTime()
  gameQuarter = ClockFactory.getQuarter()

  interlude.homeScore = TeamFactory.getHomePoints()
  interlude.awayScore = TeamFactory.getAwayPoints()
  interlude.endGame = false

  if interlude.homeScore > interlude.awayScore
    team = TeamFactory.getHomeTeam()
    interlude.commentary = team.nickname + ' is leading at home'
  else if interlude.awayScore > interlude.homeScore
    team = TeamFactory.getAwayTeam()
    interlude.commentary = team.nickname + ' is winning on the road'
  else
    interlude.commentary = 'this score is tied'

  interlude.firstQuarter = ->
    interlude.video = AdvertFactory.interludeAds[0]
    interlude.quarterAnnouncement = 'first quarter'

  interlude.secondQuarter = ->
    interlude.video = AdvertFactory.interludeAds[1]
    interlude.quarterAnnouncement = 'half'

  interlude.thirdQuarter = ->
    interlude.video = AdvertFactory.interludeAds[2]
    interlude.quarterAnnouncement = 'third quarter'

  interlude.fourthQuarter = ->
    interlude.video = AdvertFactory.interludeAds[3]
    interlude.quarterAnnouncement = 'game'
    interlude.endGame = true

    if interlude.homeScore > interlude.awayScore
      team = TeamFactory.getHomeTeam()
      interlude.commentary = team.nickname + ' wins at home'
    else if interlude.awayScore > interlude.homeScore
      team = TeamFactory.getAwayTeam()
      interlude.commentary = team.nickname + ' wins on the road'
    else
      interlude.commentary = 'the game ends in a tie'

  switch gameQuarter
    when 0 then interlude.firstQuarter()
    when 1 then interlude.secondQuarter()
    when 2 then interlude.thirdQuarter()
    when 3 then interlude.fourthQuarter()

  ClockFactory.setGameClock(gameTime)
  $scope.pauseGame()

  return interlude

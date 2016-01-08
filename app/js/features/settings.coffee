angular.module("ionicstarter")

.controller "SettingsController", (TeamFactory, SettingsFactory, ClockFactory, $scope, $state, $log) ->

  $log.log 'activate settings controller'

  # *********
  # rename this for clarity between controllers
  # *********

  setting = this

  # *********
  # create team and game time lists
  # *********

  setting.teams = TeamFactory.teams
  setting.gameTimes = [15, 12, 10, 8, 5, 3]

  # *********
  # default settings
  # *********

  setting.homeTeam = TeamFactory.getHomeTeam()
  setting.awayTeam = TeamFactory.getAwayTeam()
  setting.gametime = SettingsFactory.getGameTime()
  setting.soundSettings = SettingsFactory.getSoundSettings()
  setting.questionSettings = SettingsFactory.getQuestionSettings()

  # *********
  # save home team
  # *********

  setting.saveHome = (id) ->
    TeamFactory.saveHome(id)
    setting.homeTeam = setting.teams[id]
    $state.go('settings.awayTeam')

  # *********
  # save away team
  # *********

  setting.saveAway = (id) ->
    TeamFactory.saveAway(id)
    setting.awayTeam = setting.teams[id]
    $state.go('settings.clock')

  # *********
  # save game time
  # *********

  setting.saveGameTime = (time) ->
    SettingsFactory.saveGameTime(time)
    setting.gametime = time
    $state.go('settings.questions')

  # *********
  # save settings
  # *********

  setting.saveSettings = ->
    ClockFactory.setGameClock(setting.gametime)
    SettingsFactory.saveSoundSettings(setting.soundSettings)
    SettingsFactory.saveQuestionSettings(setting.questionSettings)
    $scope.playHomeSong()

    $state.go('cointoss.choose')

  return setting

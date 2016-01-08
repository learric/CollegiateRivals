angular.module("ionicstarter")

.controller "PlayController", (SettingsFactory, GameplayFactory, QuestionFactory, $scope, $state, $log) ->

  $log.log 'activate play controller'

  # *********
  # rename this for clarity between controllers
  # *********

  play = this

  play.scoringPlay = ->
    $scope.pauseGame()
    $state.go('scoreboard.scoringSequence')

  play.huddleUp = ->
    qSettings = SettingsFactory.getQuestionSettings()

    if $scope.gamePaused == false
      $scope.resumeGame()

    if qSettings == true
      QuestionFactory.loadNewQuestion()
      $state.go('questions')
    else
      GameplayFactory.loadNewPlay()
      $state.go('plays.play')

  return play
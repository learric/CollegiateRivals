angular.module("ionicstarter")

.controller "CoreController", (QuestionFactory, ClockFactory, SoundFactory, TeamFactory, QuarterTracker, $scope, $state) ->

  $scope.isSessionActive = true

  if !$scope.isSessionActive
    $state.go('home')

  $scope.pauseGame = ->
    $scope.gamePaused = false
    ClockFactory.pauseClock()

  $scope.resumeGame = ->
    $scope.gamePaused = true
    ClockFactory.resumeClock()

  $scope.playHomeSong = ->
    SoundFactory.playHomeFightSong()

  $scope.playAwaySong = ->
    SoundFactory.playAwayFightSong()

  $scope.playCrowd = ->
    SoundFactory.playCrowd()

  $scope.playCheer = ->
    SoundFactory.playCheer()

  $scope.incorrectBuzzer = ->
    SoundFactory.playIncorrectBuzzer()

  $scope.correctBell = ->
    SoundFactory.playCorrectBell()

  $scope.resetGame = ->
    TeamFactory.resetScores()
    QuarterTracker.resetQuarter()

angular.module("ionicstarter")

.controller "CoreController", (QuestionFactory, ClockFactory, SoundFactory, $scope, $state) ->

  $scope.isSessionActive = false

  if !$scope.isSessionActive
    $state.go('home')

  $scope.activeSession = ->
    $scope.isSessionActive = true

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
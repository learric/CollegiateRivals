angular.module("ionicstarter")

.controller "ScoreboardController", (TeamFactory, GameplayFactory, ClockFactory, $scope, $state, $log) ->

  $log.log 'activate scoreboard controller'

  # *********
  # rename this for clarity between controllers
  # *********

  board = this

  # *********
  # toggle active & inactive teams
  # *********

  board.toggleActive = ->
    TeamFactory.toggleActiveTeam()

  board.openingKickoff = ->
    $scope.resumeGame()
    $state.go('plays.new')

  board.scoringKickoff = ->
    board.toggleActive()
    $scope.resumeGame()
    $state.go('plays.new')

  # *********
  # add points to team after score
  # *********

  board.scoringPlay = (points) ->
    active = TeamFactory.getActiveTeam()
    home = TeamFactory.getHomeTeam()

    if active == home
      TeamFactory.updateHomeScore(points)
      if points != 6
        $scope.playHomeSong()
    else
      TeamFactory.updateAwayScore(points)
      if points != 6
        $scope.playAwaySong()

    $state.go('scoreboard.touchdown')

  board.cancelScoringPlay = ->
    $scope.resumeGame()
    $state.go('plays.play')

  # *********
  # calculate extra point chance and add to score if successful
  # *********

  board.extraPoint = (choice) ->
    if choice == 1
      kick = Math.floor(Math.random() * 101)

      if kick <= 98
        board.scoringPlay(1)
        board.noGood = ''
      else
        board.noGood = 'no '
    else
      kick = Math.floor(Math.random() * 101)

      if kick <= 90
        board.scoringPlay(2)
        board.noGood = ''
      else
        board.noGood = 'no '

    $state.go('scoreboard.scoringResults')

  # *********
  # calculate field goal chance and add to score if successful
  # *********

  board.fieldGoal = ->
    kick = Math.floor(Math.random() * 101)

    if kick <= 90
      board.scoringPlay(3)
      board.noGood = ''
    else
      board.noGood = 'no '

    $state.go('scoreboard.scoringResults')

  return board

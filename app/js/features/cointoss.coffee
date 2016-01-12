angular.module("ionicstarter")

.controller "CointossController", (SettingsFactory, TeamFactory, $scope, $state, $log) ->

  $log.log 'activate cointoss controller'

  # *********
  # rename this for clarity between controllers
  # *********

  toss = this

  toss.tossCoin = (choice) ->
    $log.log 'away team chooses ' + choice

    # *********
    # toss choice
    # *********

    toss.tossChoice = choice

    if choice == 'heads'
      toss.showAwayToken = false
    else
      toss.showAwayToken = true

    # *********
    # coin toss - if 0 heads, 1 tails
    # *********

    tossResult = Math.floor(Math.random() * 2)
    $log.log tossResult

    if tossResult == 0
      toss.result = 'heads'
      toss.showAwayLogo = false
    else
      toss.result = 'tails'
      toss.showAwayLogo = true

    # *********
    # coin toss result
    # *********

    if choice == toss.result
      toss.winnerAway = true
      TeamFactory.saveTossWinner('away')
    else
      toss.winnerAway = false
      TeamFactory.saveTossWinner('home')

    $state.go('cointoss.flip')

  toss.cointossKickoff = ->
    $scope.playCrowd()
    $state.go('scoreboard.openingKickoff')

  return toss

angular.module("ionicstarter")

.factory "GameplayFactory", () ->

  plays = [
    {
      action: 'Pass Complete!',
      result: 'Move 2 spaces'
    },
    {
      action: 'Pass Complete!',
      result: 'Move 2 spaces'
    },
    {
      action: 'Pass Complete!',
      result: 'Move 2 spaces'
    },
    {
      action: 'Pass Complete!',
      result: 'Move 2 spaces'
    },
    {
      action: 'Complete Pass!',
      result: 'Move 3 spaces'
    },
    {
      action: 'Complete Pass!',
      result: 'Move 3 spaces'
    },
    {
      action: 'Complete Pass!',
      result: 'Move 3 spaces'
    },
    {
      action: 'Complete Pass!',
      result: 'Move 3 spaces'
    },
    {
      action: 'Complete Pass!',
      result: 'Move 3 spaces'
    },
    {
      action: 'Complete Pass!',
      result: 'Move 3 spaces'
    },
    {
      action: 'Complete Pass!',
      result: 'Move 3 spaces'
    },
    {
      action: 'Complete Pass!',
      result: 'Move 3 spaces'
    },
    {
      action: 'Complete Pass!',
      result: 'Move 3 spaces'
    },
    {
      action: 'Complete Pass!',
      result: 'Move 3 spaces'
    },
    {
      action: 'Complete Pass!',
      result: 'Move 3 spaces'
    },
    {
      action: 'Long pass complete!',
      result: 'Move 4 spaces'
    },
    {
      action: 'Long pass complete!',
      result: 'Move 4 spaces'
    },
    {
      action: 'Long pass complete!',
      result: 'Move 4 spaces'
    },
    {
      action: 'Long pass complete!',
      result: 'Move 4 spaces'
    },
    {
      action: 'Long pass complete!',
      result: 'Move 4 spaces'
    },
    {
      action: 'Stopped for a short gain!',
      result: 'Move 1 space'
    },
    {
      action: 'Stopped for a short gain!',
      result: 'Move 1 space'
    },
    {
      action: 'Stopped for a short gain!',
      result: 'Move 1 space'
    },
    {
      action: 'Stopped for a short gain!',
      result: 'Move 1 space'
    },
    {
      action: 'Run up the middle!',
      result: 'Move 2 spaces'
    },
    {
      action: 'Run up the middle!',
      result: 'Move 2 spaces'
    },
    {
      action: 'Run up the middle!',
      result: 'Move 2 spaces'
    },
    {
      action: 'Run up the middle!',
      result: 'Move 2 spaces'
    },
    {
      action: 'Nice run!',
      result: 'Move 3 spaces'
    },
    {
      action: 'Nice run!',
      result: 'Move 3 spaces'
    },
    {
      action: 'Nice run!',
      result: 'Move 3 spaces'
    },
    {
      action: 'Nice run!',
      result: 'Move 3 spaces'
    },
    {
      action: 'Run around the outside!',
      result: 'Move 4 spaces'
    },
    {
      action: 'Run around the outside!',
      result: 'Move 4 spaces'
    },
    {
      action: 'Run around the outside!',
      result: 'Move 4 spaces'
    },
    {
      action: 'Run around the outside!',
      result: 'Move 4 spaces'
    },
    {
      action: 'Long run down the sideline!',
      result: 'Move 5 spaces'
    },
    {
      action: 'Long run down the sideline!',
      result: 'Move 5 spaces'
    },
    {
      action: 'Long run down the sideline!',
      result: 'Move 5 spaces'
    },
    {
      action: 'Long run down the sideline!',
      result: 'Move 5 spaces'
    },
    {
      action: 'Fumble!',
      result: 'Ball goes to opponent'
    },
    {
      action: 'Interception!',
      result: 'Opponent move 3 spaces'
    },
    {
      action: 'Incomplete pass!',
      result: 'No move'
    },
    {
      action: 'False Start!',
      result: 'Move back 2 spaces'
    },
    {
      action: 'Personal Foul, Facemask!',
      result: 'Move back 3 spaces'
    },
    {
      action: 'Personal Foul, Late Hit!',
      result: 'Move back 3 spaces'
    },
    {
      action: 'Illegal motion!',
      result: 'Move back 2 spaces'
    },
    {
      action: 'Offsides!',
      result: 'Move back 1 space'
    },
    {
      action: 'Delay of game!',
      result: 'Move back 1 space'
    },
    {
      action: 'Offensive Holding!',
      result: 'Move back 2 spaces'
    },
    {
      action: 'Pass Interference!',
      result: 'Move back 3 spaces'
    },
    {
      action: 'Holding',
      result: 'Move back 1 space'
    }
  ]

  newPlayIndex = 0
  getNewPlay = plays[newPlayIndex]
  playImage = 0

  return {
    loadNewPlay: ->
      newIndex = Math.floor(Math.random() * plays.length)
      imageIndex = Math.floor(Math.random() * 6)

      getNewPlay = plays[newIndex]
      playImage = imageIndex

    getNewPlay: ->
      return getNewPlay

    getPlayImage: ->
      return playImage
  }
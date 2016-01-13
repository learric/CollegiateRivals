angular.module("ionicstarter")

.factory "ClockFactory", ($state, $timeout) ->

  setGameTime = 300

  newClock = new FlipClock(newClock, {
    countdown: true
    callbacks: {
      stop: ->
        if (this.count == (setGameTime - 1)) || (this.count == setGameTime)
          $timeout(->
            $state.go('interlude')
          1500)
    }
  })

  newClock.setTime(setGameTime)

  return {
    setGameClock: (time) ->
      setGameTime = time * 60
      newClock.setTime(setGameTime)

    pauseClock: ->
      newClock.stop()

    resumeClock: ->
      newClock.start()

    getClock: ->
      return newClock
  }

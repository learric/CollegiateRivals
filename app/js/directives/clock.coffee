angular.module("ionicstarter")

.directive "adjustSettingsButton", ($state, TeamFactory, ClockFactory) ->

  return {
    restrict: 'EAC'
    template: '<span class="ion-home"></span>'
    link: (sc, el) ->
      el.on('click', ->
        url = $state.current.url
        sc.pauseGame()

        if url == '/play'
          TeamFactory.toggleActiveTeam()

        $state.go('homeIngame')
      )
  }

.directive "soundEffectsButton", (SettingsFactory) ->

  return {
    restrict: 'EAC'
    link: (sc, el) ->
      sounds = SettingsFactory.getSoundSettings()

      if sounds == true
        el.html('<span class="ion-volume-medium"></span>')
      else
        el.html('<span class="ion-volume-mute"></span>')

      el.on('click', ->
        sounds = SettingsFactory.getSoundSettings()

        if sounds == true
          SettingsFactory.saveSoundSettings(false)
          el.html('<span class="ion-volume-mute"></span>')
        else
          SettingsFactory.saveSoundSettings(true)
          el.html('<span class="ion-volume-medium"></span>')
      )
  }

.directive "clockFace", (ClockFactory, $timeout, $state) ->

  return {
    restrict: 'EAC'
    link: (sc, el) ->
      time = ClockFactory.getClock()
      getCurrent = time.getTime()

      checkTime = ->
        minTen = time.face.lists[2].digit
        minOne = time.face.lists[3].digit
        secTen = time.face.lists[4].digit
        secOne = time.face.lists[5].digit

        if minTen == '0'
          el.text(minOne + ':' + secTen + secOne)
        else
          el.text(minTen + minOne + ':' + secTen + secOne)

        $timeout(->
          checkTime()
        1000)

      checkTime()

      if getCurrent.time == 0
        $state.go('interlude')
  }

.directive "currentQuarter", (QuarterTracker) ->

  return {
    restrict: 'EAC'
    link: (sc, el) ->
      quarter = QuarterTracker.getQuarter()
      el.text(quarter)
  }

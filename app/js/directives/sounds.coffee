angular.module("ionicstarter")

.directive "playCrowdDirective", (SoundFactory) ->

  return {
    restrict: 'EAC'
    link: (sc, el) ->
      el.on('click', ->
        SoundFactory.playCrowd()
      )
  }

.directive "playRoarDirective", (SoundFactory) ->

  return {
  restrict: 'EAC'
  link: (sc, el) ->
    el.on('click', ->
      SoundFactory.playRoar()
    )
  }

.directive "playWhistleDirective", (SoundFactory) ->

  return {
  restrict: 'EAC'
  link: ->
    SoundFactory.playWhistle()
    SoundFactory.playCrowd()
  }

.directive "playTouchdownDirective", (SoundFactory) ->

  return {
  restrict: 'EAC'
  link: (sc, el) ->
    el.on('click', ->
      SoundFactory.playTouchdown()
    )
  }

angular.module("ionicstarter")

.directive "advertYouTubeVideo", ->

  return {
    restrict: 'EAC'
    link: (sc, el) ->
      vid = sc.interlude.video.videoSrc
      el.html('<iframe src="' + vid + '" frameborder="0" allowfullscreen></iframe>')
  }

.directive "advertButtonDelay", ($timeout) ->

  return {
    restrict: 'EAC'
    link: (sc, el) ->
      el.hide()
      $timeout(->
        el.show()
      15000)
  }

.directive "advertButtonDelayText", ($timeout) ->

  return {
    restrict: 'EAC'
    link: (sc, el) ->
      el.show()
      $timeout(->
        el.hide()
      15000)
  }

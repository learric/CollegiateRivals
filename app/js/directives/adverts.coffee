angular.module("ionicstarter")

.directive "advertYouTubeVideo", ->

  return {
    restrict: 'EAC'
    link: (sc, el) ->
      vid = sc.interlude.video.videoSrc
      el.html('<iframe src="' + vid + '" frameborder="0" allowfullscreen></iframe>')
  }
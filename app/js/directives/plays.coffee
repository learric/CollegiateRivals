angular.module("ionicstarter")

.directive "playAction", (GameplayFactory) ->

  return {
    restrict: 'EAC'
    link: (sc, el) ->
      play = GameplayFactory.getNewPlay()
      action = play.action
      result = play.result
      el.html('<h3>' + result + '</h3><h4>' + action + '</h4>')
  }

.directive "playImage", (GameplayFactory) ->

  return {
    restrict: 'EAC'
    link: (sc, el) ->
      image = GameplayFactory.getPlayImage()
      el.html('<div class="play_view" style="background-image: url(img/bg_plays/' + image + '.png)"></div>')
  }
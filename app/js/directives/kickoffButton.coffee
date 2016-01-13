angular.module("ionicstarter")

.directive "delayScoringButtonDisplay", ($timeout) ->

  return {
    restrict: 'EAC'
    link: (sc, el) ->
      el.hide()
      $timeout( ->
        el.show()
      5000)
  }

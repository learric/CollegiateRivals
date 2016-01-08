angular.module("ionicstarter")

.directive "addActiveClass", ->

  return {
    restrict: 'EAC'
    link: (sc, el) ->
      el.addClass('active')
  }

.directive "addFlipCoinClass", ($timeout) ->

  return {
    restrict: 'EAC'
    link: (sc, el) ->
      $timeout(->
        el.addClass('flip_coin')
      , 100)

#      $timeout(->
#        el.css({
#          display: 'none'
#        })
#      , 1600)
  }

.directive "hideAfterCoinFlip", ($timeout) ->

  return {
    restrict: 'EAC'
    link: (sc, el) ->
      $timeout(->
        el.css({
          display: 'none'
          opacity: 0
        })
      , 1600)
  }

.directive "showAfterCoinFlip", ($timeout) ->

  return {
  restrict: 'EAC'
  link: (sc, el) ->
    el.css({
      display: 'none'
      opacity: 0
    })

    $timeout(->
      el.css({
        display: 'block'
        opacity: 1
      })
    , 1595)
  }

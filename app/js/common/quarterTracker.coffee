angular.module("ionicstarter")

.factory "QuarterTracker", ->

  quarter = 1

  return {
    getQuarter: ->
      return quarter

    updateQuarter: ->
      if quarter < 4
        quarter += 1
      else
        quarter = 1
  }

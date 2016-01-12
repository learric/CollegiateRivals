angular.module("ionicstarter")

# A simple controller that shows a tapped item's data
.controller "QuestionsController", (GameplayFactory, TeamFactory, QuestionFactory, $scope, $state, $log) ->

  $log.log 'activate questions controller'

  # *********
  # rename this for clarity between controllers
  # *********

  question = this

  question.loadNewPlay = ->
    GameplayFactory.loadNewPlay()
    $state.go('plays.play')

  question.incorrectAnswer = ->
    TeamFactory.toggleActiveTeam()
    $state.go('plays.new')

  question.correctAnswer = QuestionFactory.getCurrentQuestion()

  return question

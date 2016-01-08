angular.module("ionicstarter")

.factory "QuestionFactory", (QuestionProvider) ->
  questions = QuestionProvider
  currentQuestion = questions[0]
  answerOrder = [0, 1, 2, 3]

  return {
    loadNewQuestion: ->
      qIndex = Math.floor(Math.random() * questions.length)
      aIndex = Math.floor(Math.random() * 4)

      currentQuestion = questions[qIndex]

      if aIndex == 0
        answerOrder = [0, 1, 2, 3]
      else if aIndex == 1
        answerOrder = [1, 2, 3, 0]
      else if aIndex == 2
        answerOrder = [2, 3, 0, 1]
      else
        answerOrder = [3, 2, 1, 0]

    getCurrentQuestion: ->
      return currentQuestion

    getFirstAnswer: ->
      order = answerOrder[0]
      return currentQuestion.answers[order]

    getSecondAnswer: ->
      order = answerOrder[1]
      return currentQuestion.answers[order]

    getThirdAnswer: ->
      order = answerOrder[2]
      return currentQuestion.answers[order]

    getLastAnswer: ->
      order = answerOrder[3]
      return currentQuestion.answers[order]
  }
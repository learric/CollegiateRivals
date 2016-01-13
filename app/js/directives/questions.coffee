angular.module("ionicstarter")

.directive "questionCategory", (QuestionFactory) ->

  return {
    restrict: 'EAC'
    link: (sc, el) ->
      question = QuestionFactory.getCurrentQuestion()

      if question.category == ''
        el.text('General Question')
      else
        el.text(question.category + ' Question')
  }

.directive "questionFirstLine", (QuestionFactory) ->

  return {
    restrict: 'EAC'
    link: (sc, el) ->
      question = QuestionFactory.getCurrentQuestion()
      el.text(question.firstLine)
  }

.directive "questionLastLine", (QuestionFactory) ->

  return {
    restrict: 'EAC'
    link: (sc, el) ->
      question = QuestionFactory.getCurrentQuestion()
      el.text(question.lastLine)
  }

.directive "firstAnswer", (QuestionFactory, $state) ->

  return {
    restrict: 'EAC'
    link: (sc, el) ->
      answer = QuestionFactory.getFirstAnswer()
      correct = QuestionFactory.getCurrentQuestion()

      el.html('<span>A</span><p>' + answer + '</p>')
      el.addClass('first')
      el.on('click', ->
        if answer == correct.answers[3]
          sc.correctBell()
          $state.go('correctAnswer')
        else
          sc.incorrectBuzzer()
          $state.go('incorrectAnswer')
      )
  }

.directive "secondAnswer", (QuestionFactory, $state) ->

  return {
    restrict: 'EAC'
    link: (sc, el) ->
      answer = QuestionFactory.getSecondAnswer()
      correct = QuestionFactory.getCurrentQuestion()

      el.html('<span>B</span><p>' + answer + '</p>')
      el.addClass('second')
      el.on('click', ->
        if answer == correct.answers[3]
          sc.correctBell()
          $state.go('correctAnswer')
        else
          sc.incorrectBuzzer()
          $state.go('incorrectAnswer')
      )
  }

.directive "thirdAnswer", (QuestionFactory, $state) ->

  return {
    restrict: 'EAC'
    link: (sc, el) ->
      answer = QuestionFactory.getThirdAnswer()
      correct = QuestionFactory.getCurrentQuestion()

      el.html('<span>C</span><p>' + answer + '</p>')
      el.addClass('third')
      el.on('click', ->
        if answer == correct.answers[3]
          sc.correctBell()
          $state.go('correctAnswer')
        else
          sc.incorrectBuzzer()
          $state.go('incorrectAnswer')
      )
  }

.directive "lastAnswer", (QuestionFactory, $state) ->

  return {
    restrict: 'EAC'
    link: (sc, el) ->
      answer = QuestionFactory.getLastAnswer()
      correct = QuestionFactory.getCurrentQuestion()

      el.html('<span>D</span><p>' + answer + '</p>')
      el.addClass('last')
      el.on('click', ->
        if answer == correct.answers[3]
          sc.correctBell()
          $state.go('correctAnswer')
        else
          sc.incorrectBuzzer()
          $state.go('incorrectAnswer')
      )
  }
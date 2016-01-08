angular.module("ionicstarter")

.factory 'SettingsFactory', ->

  gameTime = 5
  soundSettings = true
  questionSettings = true

  return {
    saveGameTime: (time) ->
      gameTime = time

    getGameTime: ->
      return gameTime

    saveSoundSettings: (sound) ->
      soundSettings = sound

    getSoundSettings: ->
      return soundSettings

    saveQuestionSettings: (questions) ->
      questionSettings = questions

    getQuestionSettings: ->
      return questionSettings
  }
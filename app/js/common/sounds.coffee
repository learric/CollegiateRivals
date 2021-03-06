angular.module("ionicstarter")

.factory "SoundFactory", (TeamFactory, SettingsFactory) ->

  soundLoc = 'components/sounds/'

  homeFightSong = (home) ->
    homeTeam = home

    return new buzz.sound(soundLoc + homeTeam.class, {
      formats: ['ogg', 'mp3']
    })

  awayFightSong = (away) ->
    awayTeam = away

    return new buzz.sound(soundLoc + awayTeam.class, {
      formats: ['ogg', 'mp3']
    })

  touchdown = new buzz.sound(soundLoc + 'touchdown', {
    formats: ['ogg', 'mp3']
    preload: true
  })

  whistle = new buzz.sound(soundLoc + 'whistle', {
    formats: ['ogg', 'mp3']
    preload: true
  })

  crowd = new buzz.sound(soundLoc + 'crowd', {
    formats: ['ogg', 'mp3']
    preload: true
  })

  cheer = new buzz.sound(soundLoc + 'cheer', {
    formats: ['ogg', 'mp3']
    preload: true
  })

  roar = new buzz.sound(soundLoc + 'roar', {
    formats: ['ogg', 'mp3']
    preload: true
  })

  correctBell = new buzz.sound(soundLoc + 'correct_bell', {
    formats: ['ogg', 'mp3']
    preload: true
  })

  incorrectBuzzer = new buzz.sound(soundLoc + 'incorrect_buzzer', {
    formats: ['ogg', 'mp3']
    preload: true
  })

  soundStatus = ->
    return SettingsFactory.getSoundSettings()

  return {
    playHomeFightSong: ->
      buzz.all().stop()
      sounds = soundStatus()
      team = TeamFactory.getHomeTeam()

      if (sounds == true)
        homeFightSong(team).play().fadeOut(25000)

    playAwayFightSong: ->
      buzz.all().stop()
      sounds = soundStatus()
      team = TeamFactory.getAwayTeam()

      if sounds == true
        awayFightSong(team).play().fadeOut(25000)

    playTouchdown: ->
      buzz.all().stop()
      sounds = soundStatus()
      if sounds == true
        touchdown.play()

    playWhistle: ->
      buzz.all().stop()
      sounds = soundStatus()
      if sounds == true
        whistle.play()

    playCrowd: ->
      buzz.all().stop()
      sounds = soundStatus()
      if sounds == true
        crowd.play().fadeOut()

    playCheer: ->
      buzz.all().stop()
      sounds = soundStatus()
      if sounds == true
        cheer.play().fadeOut()

    playRoar: ->
      buzz.all().stop()
      sounds = soundStatus()
      if sounds == true
        roar.play().fadeOut()

    playCorrectBell: ->
      buzz.all().stop()
      sounds = soundStatus()
      if sounds == true
        correctBell.play()

    playIncorrectBuzzer: ->
      buzz.all().stop()
      sounds = soundStatus()
      if sounds == true
        incorrectBuzzer.play()
  }
angular.module('ionicstarter')

.config ($stateProvider, $urlRouterProvider) ->

# Ionic uses AngularUI Router which uses the concept of states
# Learn more here: https://github.com/angular-ui/ui-router
# Set up the various states which the app can be in.

# the pet tab has its own child nav-view and history
  $stateProvider

# #########
# home states
# #########

  .state 'home',
    url: '/home'
    templateUrl: 'templates/home/home.html'

  .state 'homeIngame',
    url: '/homeIngame'
    templateUrl: 'templates/home/homeIngame.html'

# #########
# settings states
# #########

  .state 'settings',
    url: '/settings'
    templateUrl: 'templates/settings/settings.html'
    controller: 'SettingsController as setting'

  .state 'settings.homeTeam',
    url: '/homeTeam'
    views:
      'content':
        templateUrl: 'templates/settings/home.html'

  .state 'settings.awayTeam',
    url: '/awayTeam'
    views:
      'content':
        templateUrl: 'templates/settings/away.html'

  .state 'settings.clock',
    url: '/clock'
    views:
      'content':
        templateUrl: 'templates/settings/clock.html'

  .state 'settings.sounds',
    url: '/sounds'
    views:
      'content':
        templateUrl: 'templates/settings/sounds.html'

  .state 'settings.questions',
    url: '/questions'
    views:
      'content':
        templateUrl: 'templates/settings/questions.html'

  .state 'settings.review',
    url: '/review'
    views:
      'content':
        templateUrl: 'templates/settings/review.html'

# #########
# cointoss states
# #########

  .state 'cointoss',
    url: '/cointoss'
    cache: false
    templateUrl: 'templates/cointoss/cointoss.html'
    controller: 'CointossController as toss'

#  .state 'cointoss.welcome',
#    url: '/welcome'
#    views:
#      content:
#        templateUrl: 'templates/cointoss/welcome.html'

  .state 'cointoss.choose',
    url: '/choose'
    views:
      content:
        templateUrl: 'templates/cointoss/choose.html'

  .state 'cointoss.flip',
    url: '/flip'
    views:
      content:
        templateUrl: 'templates/cointoss/flip.html'

  .state 'cointoss.result',
    url: '/result'
    cache: false
    views:
      content:
        templateUrl: 'templates/cointoss/result.html'

# #########
# scoreboard states
# #########

  .state 'scoreboard',
    url: '/scoreboard'
    cache: false
    templateUrl: 'templates/scoreboard/scoreboard.html'
    controller: 'ScoreboardController as board'

  .state 'scoreboard.openingKickoff',
    url: '/openingKickoff'
    views:
      home:
        templateUrl: 'templates/scoreboard/home.html'
      clock:
        templateUrl: 'templates/scoreboard/clock.html'
      away:
        templateUrl: 'templates/scoreboard/away.html'
      content:
        templateUrl: 'templates/scoreboard/kickoff.opening.html'
      buttons:
        templateUrl: 'templates/scoreboard/kickoff.openingBtns.html'

  .state 'scoreboard.scoringSequence',
    url: '/scoringSequence'
    cache: false
    views:
      home:
        templateUrl: 'templates/scoreboard/home.html'
      clock:
        templateUrl: 'templates/scoreboard/clock.html'
      away:
        templateUrl: 'templates/scoreboard/away.html'
      content:
        templateUrl: 'templates/scoreboard/scoringSequence.html'
      buttons:
        templateUrl: 'templates/scoreboard/scoringSequenceBtns.html'

  .state 'scoreboard.touchdown',
    url: '/touchdown'
    cache: false
    views:
      home:
        templateUrl: 'templates/scoreboard/home.html'
      clock:
        templateUrl: 'templates/scoreboard/clock.html'
      away:
        templateUrl: 'templates/scoreboard/away.html'
      content:
        templateUrl: 'templates/scoreboard/touchdown.html'
      buttons:
        templateUrl: 'templates/scoreboard/touchdownBtns.html'

  .state 'scoreboard.fieldGoal',
    url: '/fieldGoal'
    cache: false
    views:
      home:
        templateUrl: 'templates/scoreboard/home.html'
      clock:
        templateUrl: 'templates/scoreboard/clock.html'
      away:
        templateUrl: 'templates/scoreboard/away.html'
      content:
        templateUrl: 'templates/scoreboard/fieldGoal.html'
      buttons:
        templateUrl: 'templates/scoreboard/fieldGoalBtns.html'

  .state 'scoreboard.scoringResults',
    url: '/scoringResults'
    cache: false
    views:
      home:
        templateUrl: 'templates/scoreboard/home.html'
      clock:
        templateUrl: 'templates/scoreboard/clock.html'
      away:
        templateUrl: 'templates/scoreboard/away.html'
      content:
        templateUrl: 'templates/scoreboard/scoringResults.html'
      buttons:
        templateUrl: 'templates/scoreboard/scoringResultsBtns.html'

# #########
# question states
# #########

  .state 'questions',
    url: '/questions'
    cache: false
    templateUrl: 'templates/questions/questions.html'
    controller: 'QuestionsController as question'

  .state 'correctAnswer',
    url: '/correctAnswer'
    cache: false
    templateUrl: 'templates/questions/correctAnswer.html'
    controller: 'QuestionsController as question'

  .state 'incorrectAnswer',
    url: '/incorrectAnswer'
    cache: false
    templateUrl: 'templates/questions/incorrectAnswer.html'
    controller: 'QuestionsController as question'

# #########
# play states
# #########

  .state 'plays',
    url: '/plays'
    cache: false
    templateUrl: 'templates/plays/plays.html'
    controller: 'ScoreboardController as board'

  .state 'plays.new',
    url: '/new'
    cache: false
    views:
      home:
        templateUrl: 'templates/scoreboard/home.html'
      clock:
        templateUrl: 'templates/scoreboard/clock.html'
      away:
        templateUrl: 'templates/scoreboard/away.html'
      content:
        templateUrl: 'templates/plays/new.html'
      buttons:
        templateUrl: 'templates/plays/newBtns.html'
        controller: 'PlayController as play'

  .state 'plays.play',
    url: '/play'
    cache: false
    views:
      home:
        templateUrl: 'templates/scoreboard/home.html'
      clock:
        templateUrl: 'templates/scoreboard/clock.html'
      away:
        templateUrl: 'templates/scoreboard/away.html'
      content:
        templateUrl: 'templates/plays/play.html'
      buttons:
        templateUrl: 'templates/plays/playBtns.html'
        controller: 'PlayController as play'

# #########
# interlude states
# #########

  .state 'interlude',
    url: '/interlude'
    cache: false
    templateUrl: 'templates/interlude/interlude.html'
    controller: 'InterludeController as interlude'

  $urlRouterProvider.otherwise '/home'

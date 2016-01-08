angular.module("ionicstarter")

.controller "SessionController", (SessionFactory) ->

  session = this

  session.createSession = ->
    console.log 'create'

  return session

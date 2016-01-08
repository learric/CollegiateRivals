angular.module("ionicstarter")

.controller "SessionController", (SessionFactory) ->

  session = this

  session.createSession = ->
    SessionFactory.createSession(session.email, session.token)

  return session

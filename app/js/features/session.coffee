angular.module("ionicstarter")

.controller "SessionController", (SessionFactory, $http) ->

  session = this

  session.createSession = ->
    SessionFactory.createSession(session.email, session.token)

  return session

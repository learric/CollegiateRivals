angular.module("ionicstarter")

.factory "SessionFactory", ($http) ->

  return {
    createSession: (email, password)->
      $http({
        method: 'GET',
        url: 'http://localhost:3000/games/questions.json'
      }).then((res) ->
        console.log res
      )
  }

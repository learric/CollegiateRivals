angular.module("ionicstarter")

.factory "SessionFactory", ($http) ->

  return {
    createSession: (email, password)->
      $http({
        method: 'POST',
        url: 'http://localhost:3000/users/sign_in'
        params: {
          email: email,
          password: password
        }
      })
  }

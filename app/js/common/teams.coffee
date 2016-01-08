angular.module("ionicstarter")

.factory 'TeamFactory', ->

  teams = [
    {
      class: 'Alabama',
      nickname: 'Alabama',
      mascot: 'Crimson Tide',
      logo: 'sec/alabama'
    },
    {
      class: 'Arkansas',
      nickname: 'Arkansas',
      mascot: 'Razorbacks',
      logo: 'sec/arkansas'
    },
    {
      class: 'Auburn',
      nickname: 'Auburn',
      mascot: 'Tigers',
      logo: 'sec/auburn'
    },
    {
      class: 'Florida',
      nickname: 'Florida',
      mascot: 'Gators',
      logo: 'sec/florida'
    },
    {
      class: 'Georgia',
      nickname: 'Georgia',
      mascot: 'Bulldogs',
      logo: 'sec/georgia'
    },
    {
      class: 'Kentucky',
      nickname: 'Kentucky',
      mascot: 'Wildcats',
      logo: 'sec/kentucky'
    },
    {
      class: 'LSU',
      nickname: 'LSU',
      mascot: 'Tigers',
      logo: 'sec/lsu'
    },
    {
      class: 'Mizzou',
      nickname: 'Missouri',
      mascot: 'Tigers',
      logo: 'sec/mizzou'
    },
    {
      class: 'Miss',
      nickname: 'Ole Miss',
      mascot: 'Rebels',
      logo: 'sec/olemiss'
    },
    {
      class: 'State',
      nickname: 'Miss State',
      mascot: 'Bulldogs',
      logo: 'sec/state'
    },
    {
      class: 'Texas',
      nickname: 'Texas A&M',
      mascot: 'Aggies',
      logo: 'sec/tam'
    },
    {
      class: 'Tenn',
      nickname: 'Tennessee',
      mascot: 'Vols',
      logo: 'sec/tenn'
    },
    {
      class: 'USC',
      nickname: 'Carolina',
      mascot: 'Gamecocks',
      logo: 'sec/usc'
    },
    {
      class: 'Vandy',
      nickname: 'Vanderbilt',
      mascot: 'Commodores',
      logo: 'sec/vandy'
    }
  ]

  homeId = 2
  awayId = 3
  tossWinner = ''
  activeTeam = teams[homeId]
  inactiveTeam = teams[awayId]
  homeScore = 0
  awayScore = 0

  return {
    teams: teams

    saveHome: (id) ->
      homeId = id

    getHomeTeam: ->
      return teams[homeId]

    saveAway: (id) ->
      awayId = id

    getAwayTeam: ->
      return teams[awayId]

    saveTossWinner: (winner) ->
      tossWinner = winner

      if winner == 'home'
        activeTeam = teams[homeId]
        inactiveTeam = teams[awayId]
      else
        activeTeam = teams[awayId]
        inactiveTeam = teams[homeId]

    getTossWinner: ->
      return tossWinner

    toggleActiveTeam: ->
      if activeTeam == teams[homeId]
        activeTeam = teams[awayId]
        inactiveTeam = teams[homeId]
      else
        activeTeam = teams[homeId]
        inactiveTeam = teams[awayId]

    getActiveTeam: ->
      return activeTeam

    getInactiveTeam: ->
      return inactiveTeam

    getHomePoints: ->
      return homeScore

    getAwayPoints: ->
      return awayScore

    updateHomeScore: (points) ->
      homeScore += points

    updateAwayScore: (points) ->
      awayScore += points
  }

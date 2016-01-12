angular.module("ionicstarter")

.factory 'TeamFactory', ->

  teams = [
    {
      class: 'Alabama',
      nickname: 'Alabama',
      mascot: 'Crimson Tide',
      logo: 'sec/alabama',
      conference: 'sec',
      slogan: 'roll tide'
    },
    {
      class: 'Arkansas',
      nickname: 'Arkansas',
      mascot: 'Razorbacks',
      logo: 'sec/arkansas',
      conference: 'sec',
      slogan: 'woo pig souie'
    },
    {
      class: 'Auburn',
      nickname: 'Auburn',
      mascot: 'Tigers',
      logo: 'sec/auburn',
      conference: 'sec',
      slogan: 'war eagle'
    },
    {
      class: 'Florida',
      nickname: 'Florida',
      mascot: 'Gators',
      logo: 'sec/florida',
      conference: 'sec',
      slogan: 'go gators'
    },
    {
      class: 'Georgia',
      nickname: 'Georgia',
      mascot: 'Bulldogs',
      logo: 'sec/georgia',
      conference: 'sec',
      slogan: 'go dawgs'
    },
    {
      class: 'Kentucky',
      nickname: 'Kentucky',
      mascot: 'Wildcats',
      logo: 'sec/kentucky',
      conference: 'sec',
      slogan: 'go cats'
    },
    {
      class: 'LSU',
      nickname: 'LSU',
      mascot: 'Tigers',
      logo: 'sec/lsu',
      conference: 'sec',
      slogan: 'geaux tigers'
    },
    {
      class: 'Mizzou',
      nickname: 'Missouri',
      mascot: 'Tigers',
      logo: 'sec/mizzou',
      conference: 'sec',
      slogan: 'go tigers'
    },
    {
      class: 'Miss',
      nickname: 'Ole Miss',
      mascot: 'Rebels',
      logo: 'sec/olemiss',
      conference: 'sec',
      slogan: 'hotty toddy'
    },
    {
      class: 'State',
      nickname: 'Miss State',
      mascot: 'Bulldogs',
      logo: 'sec/state',
      conference: 'sec',
      slogan: 'hail state'
    },
    {
      class: 'Texas',
      nickname: 'Texas A&M',
      mascot: 'Aggies',
      logo: 'sec/tam',
      conference: 'sec',
      slogan: 'gig em'
    },
    {
      class: 'Tenn',
      nickname: 'Tennessee',
      mascot: 'Vols',
      logo: 'sec/tenn',
      conference: 'sec',
      slogan: 'go vols'
    },
    {
      class: 'USC',
      nickname: 'Carolina',
      mascot: 'Gamecocks',
      logo: 'sec/usc',
      conference: 'sec',
      slogan: 'go cocks'
    },
    {
      class: 'Vandy',
      nickname: 'Vanderbilt',
      mascot: 'Commodores',
      logo: 'sec/vandy',
      conference: 'sec',
      slogan: 'anchor down'
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

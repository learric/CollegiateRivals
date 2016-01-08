angular.module("ionicstarter")

.factory "AdvertFactory", ->

  interludeAds = [
    {
      videoSrc: 'https://www.youtube.com/embed/ExRg8m38rug?rel=0&amp;controls=0&amp;showinfo=0&amp;autoplay=1'
      company: 'Coke'
    }
    {
      videoSrc: 'https://www.youtube.com/embed/g4hrgWC-mxU?rel=0&amp;controls=0&amp;showinfo=0&amp;autoplay=1'
      company: 'Walmart'
    }
    {
      videoSrc: 'https://www.youtube.com/embed/CtW2tw-OzL0?rel=0&amp;controls=0&amp;showinfo=0&amp;autoplay=1'
      company: 'Coke'
    }
    {
      videoSrc: 'https://www.youtube.com/embed/TzDV3LiWoWE?rel=0&amp;controls=0&amp;showinfo=0&amp;autoplay=1'
      company: 'Walmart'
    }
  ]

  return {
    interludeAds: interludeAds
  }
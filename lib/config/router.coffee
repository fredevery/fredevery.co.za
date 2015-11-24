Router.configure
  layoutTemplate: 'ApplicationLayout'
  trackPageView: true

Router.onBeforeAction ->
  Session.set 'navOpen', false
  Session.set 'pageTitle', false
  $('.application-content').addClass 'nav-open'

  @next()

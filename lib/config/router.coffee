Router.configure
  layoutTemplate: 'ApplicationLayout'

Router.onBeforeAction ->
  Session.set 'navOpen', false
  Session.set 'pageTitle', false
  $('.application-content').addClass 'nav-open'

  @next()

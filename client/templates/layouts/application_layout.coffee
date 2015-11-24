Session.set 'contentBlurred', false

App.Template 'ApplicationLayout',
  helpers:
    showLoginForm: -> Session.equals('showLoginForm', true) and not Meteor.userId()
    contentClasses: ->
      classes = ['application-content']

      if Meteor.userId()
        classes.push 'with-admin'

      if Session.get('navOpen') or Session.get('contentBlurred')
        classes.push 'nav-open'

      return classes.join ' '

  onRendered: ->
    $(document.body).on 'keyup', (evnt) ->
      if evnt.keyCode is 192
        Session.set 'showLoginForm', !Session.get('showLoginForm')

    @autorun ->
      if Session.get('navOpen')
        Session.set 'contentBlurred', true

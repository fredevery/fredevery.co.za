Session.set 'navOpen', false

App.Template 'PrimaryNav',
  helpers:
    pageTitle: -> Session.get 'pageTitle'

    classes: ->
      classes = []

      console.info 'nav-open', Session.get('navOpen') or Session.get('contentBlurred')

      if Session.get('navOpen') or Session.get('contentBlurred')
        classes.push 'nav-open'

      classes.join ' '

    showMenuContent: ->
      Session.get 'navOpen'

  uiHooks:
    '.menu-content':
      container: '#PrimaryNav'
      insert: (node, next, tmpl) ->
        $node = $(node)
        $navItems = $node.find('.nav-item')

        $node.addClass 'transition-out'
        $navItems.addClass 'transition-out'

        $node.insertBefore next
        $node.one App.transitions.endEvent, ->
          $navItems.each (i) ->
            $navItem = $(@)
            setTimeout (=>
              $navItem.removeClass 'transition-out'
            ), 100 * i

        Tracker.afterFlush ->
          $node.css 'height'
          $node.removeClass 'transition-out'

      remove: (node, tmpl) ->
        $node = $(node)
        $navItems = $node.find('.nav-item')

        $navItems.each (i) ->
          $navItem = $(@)
          setTimeout (=>
            $navItem.addClass 'transition-out'
          ), 100 * i

        $navItems.last().one App.transitions.endEvent, ->
          $node.addClass 'transition-out'
          Session.set 'contentBlurred', false
          $node.remove()

  events:
    'click .nav-toggle' : ->
      Session.set 'navOpen', !Session.get('navOpen')

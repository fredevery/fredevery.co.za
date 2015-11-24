App.Template 'HomeIndex',
  helpers:
    bgHeight: -> window.innerHeight
    bgWidth: -> window.innerWidth

  events:
    'click .quick-nav-links a' : (evnt) ->
      evnt.preventDefault()
      $target             = $(evnt.currentTarget)
      $applicationContent = $('.application-content')
      href                = $target.attr 'href'

      $applicationContent.addClass 'nav-open'

      setTimeout (->
        Router.go href
        setTimeout (->

          $applicationContent.removeClass 'nav-open'
        )
      ), 1000

App.Template 'PortfolioIndex',
  helpers:
    portfolioPieces: ->
      return App.collections.PortfolioPieces.find()
    scrollerWidth: ->
      return window.innerWidth * 2
    pieceWidth: ->
      return window.innerWidth
    handheldWidth: ->
      if @images.handheld?
        return "handheld-#{@images.handheld.length}"
    desktopWidth: ->
      if @images.desktop?
        return "desktop-#{@images.desktop.length}"


  events:
    'click .scroll-dot' : (evnt, tmpl) ->
      $target    = $(evnt.currentTarget)
      segmentX   = $target.data('pieceIndex')
      scrollLeft = segmentX * window.innerWidth

      tmpl._scrollers[0].scrollTo scrollLeft, 0, true

      $target.siblings('.active').removeClass 'active'
      $target.addClass 'active'

      tmpl.updateScrollTos segmentX

    'click .scroll-to' : (evnt, tmpl) ->
      $target         = $(evnt.currentTarget)
      direction       = $target.data 'direction'
      scroller        = tmpl._scrollers[0]
      newScrollLeft   = scroller.scrollLeft
      currentSegmentX = scroller.currentSegment.x
      $scrollTos      = tmpl.$('.scroll-to')

      if direction is 'left'
        newScrollLeft -= window.innerWidth
        newSegmentX = currentSegmentX - 1
      else
        newScrollLeft += window.innerWidth
        newSegmentX = currentSegmentX + 1

      scroller.scrollTo newScrollLeft, 0, true

      tmpl.updateScrollTos newSegmentX

  scrollers:
    '.portfolio-scroller' :
      options:
        scrollbars: false
        scrollingX: true
        scrollingY: false
        snapping: true
        singlePageScrolls: true
        maxFlingDuration: 100
        bouncing: false
      events:
        segmentwillchange: (scroller) ->
          for piece in @_portfolioPieces
            isActivePiece = piece.index is scroller.segmentX
            piece.$scrollDot.toggleClass 'active', isActivePiece
            @updateScrollTos scroller.segmentX

  onRendered: ->
    $portfolioScrollerContent = @$ '.portfolio-scroller-content'
    $portfolioPieces          = @$ '.portfolio-piece'
    $scrollDots               = @$ '.scroll-dots'
    $scrollTos                = @$ '.scroll-to'

    @_portfolioPieces = []

    @updateScrollTos = (newSegmentX) =>
      console.info newSegmentX
      hidePrev = newSegmentX is 0
      hideNext = newSegmentX is @_portfolioPieces.length - 1

      $scrollTos.filter('.prev').toggleClass('hidden', hidePrev)
      $scrollTos.filter('.next').toggleClass('hidden', hideNext)

    $portfolioScrollerContent.width window.innerWidth * $portfolioPieces.length

    $portfolioPieces.each (i, portfolioPiece) =>
      $portfolioPiece = $ portfolioPiece
      $scrollDot      = $ '<a class="scroll-dot">'

      piece =
        index: i
        $: $portfolioPiece
        $scrollDot: $scrollDot

      if i is 0
        $scrollDot.addClass 'active'

      $scrollDot.data 'pieceIndex', i
      $scrollDots.append $scrollDot

      @_portfolioPieces.push piece

    for scroller in @_scrollers
      scroller.updateDimensions()
      scroller.scrollTo 0,0,false

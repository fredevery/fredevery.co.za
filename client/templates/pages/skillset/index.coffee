App.Template 'SkillsetIndex',
  helpers:
    skillset: (type) ->
      App.collections.Skillset.find type: type
    skillsetDescriptions: ->
      App.collections.SkillsetDescriptions.find()

  events:
    'click .scroll-dot' : (evnt, tmpl) ->
      scrollTop = $(evnt.currentTarget).data('sectionScrollTop')
      tmpl._scrollers[0].scrollTo 0,  scrollTop, true

  scrollers:
    '.skillset-blocks' :
      options:
        scrollbars: false
        scrollingX: false
        trackSegments: true
      events:
        scroll: (scroller) ->
          middle = Math.round( @_skillsetBlocksHeight / 2 )
          for section in @_skillsetSections
            sectionTop    = section.top - scroller.scrollTop
            sectionBottom = section.bottom - scroller.scrollTop
            if sectionTop < middle and sectionBottom > middle
              section.$desc.addClass 'visible'
              section.$scrollDot.addClass 'active'
            else
              section.$desc.removeClass 'visible'
              section.$scrollDot.removeClass 'active'

            windowHeight = window.innerHeight

            if sectionBottom > -(windowHeight * 0.2) and sectionTop < windowHeight * 0.9
              section.$.addClass 'visible'
            else
              section.$.removeClass 'visible'

  onRendered: ->
    $skillsetBlocks       = @$ '.skillset-blocks'
    $scrollDots           = @$ '.scroll-dots'
    $lastSkillsetSection  = @$ '.last-section'
    $skillsetDescriptions = @$ '.skillset-descriptions'
    $lastSkillBlock       = @$('.skill-block').last()
    $skillsetSections     = $skillsetBlocks.find '.section'

    descriptionsHeight     = 0
    @_skillsetBlocksHeight = $skillsetBlocks.outerHeight()
    bottomMargin           = (window.innerHeight / 2) - ( $lastSkillBlock.height() / 2 ) - 80

    @_skillsetSections    = []

    $lastSkillsetSection.css 'margin-bottom', bottomMargin

    $skillsetSections.each (i, section) =>
      $section         = $ section
      $sectionDesc     = $ '.section-desc[data-category="' + $section.data('category') + '"]'
      $scrollDot       = $ '<a class="scroll-dot">'
      $firstSkillBlock = $section.find('.skill-block').first()

      position              = $section.position()
      sectionHeight         = $section.outerHeight()
      sectionTopPadding     = parseInt $section.css('padding-top'), 10
      firstSkillBlockHeight = $firstSkillBlock.outerHeight()

      console.info($section.find('.skill-block').first(), firstSkillBlockHeight, sectionTopPadding)

      section =
        $: $section
        $desc: $sectionDesc
        $scrollDot: $scrollDot
        top: Math.round( position.top )
        bottom: Math.round( position.top + sectionHeight )

      sectionScrollTop = (section.top - (window.innerHeight / 2)) + (sectionTopPadding + (firstSkillBlockHeight / 2))

      $scrollDot.data 'sectionScrollTop', sectionScrollTop
      $scrollDots.append $scrollDot

      @_skillsetSections.push section

      if i is 0
        marginTop = Math.round( ( window.innerHeight - sectionHeight ) / 2 )
        marginTop = Math.max 0, marginTop
        $section.css 'margin-top', marginTop

    for scroller in @_scrollers
      scroller.updateDimensions()

    $skillsetDescriptions.find('.section-desc').each (i, desc) ->
      $desc      = $ desc
      descHeight = Math.round $desc.outerHeight()

      descriptionsHeight = descHeight if descHeight > descriptionsHeight

    $skillsetDescriptions.height descriptionsHeight

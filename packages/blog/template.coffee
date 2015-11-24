DEFAULT_UIHOOKS =
  insert: (node, next, tmpl) ->
    $(node).insertBefore next
  remove: (node, next, tmpl) ->
    $(node).remove()

class AppTemplate
  constructor: (@name, @options) ->
    @_template = Template[@name]

    _.extend @, @options

    @setupSubscriptions()
    @setupHelpers()
    @setupEvents()
    @setupUiHooks()
    @setupFullpage()
    @setupScrollers()
    @setupOnCreated()
    @setupOnRendered()
    @setupOnDestroyed()

  setupSubscriptions: ->
    self = @

    bindSubscriptions = (template, templateData) ->
      for subName, subFunc of self.subscriptions
        template.subscribe subName, subFunc.call( templateData )

    @_template.onCreated ->
      template = @
      @autorun ->
        templateData = Template.currentData()
        if templateData?
          bindSubscriptions template, templateData

  setupHelpers: ->
    return unless @options.helpers?
    @_template.helpers @options.helpers

  setupEvents: ->
    return unless @options.events?
    @_template.events @options.events

  setupUiHooks: ->
    return unless @options.uiHooks?
    @_template.uihooks @options.uiHooks

  setupFullpage: ->
    return unless @options.fullpage?
    fullpage = _.extend {}, @options.fullpage
    fullpage.otions ?= {}

    @_template.onRendered ->
      @_$fullpageContainer = @$ fullpage.selector
      @_$fullpageContainer.fullpage fullpage.options

    @_template.onDestroyed ->
      @_$fullpageContainer.fullpage.destroy 'all'

  setupScrollers: ->
    return unless @options.scrollers?
    scrollers = _.extend {}, @options.scrollers

    setupScrollers = ->
      @_scrollers ?= []

      for selector, options of scrollers
        scroller = new FTScroller( @find(selector), options.options )

        for eventName, handler of options.events
          handler = _.bind( handler, @ )

          if eventName is 'scroll'
            handler = _.debounce handler, 50, true

          scroller.addEventListener eventName, handler

        @_scrollers.push scroller

        setTimeout (-> scroller.scrollTo 0,1 ), 100

    destroyScrollers = ->
      for scroller in @_scrollers
        scroller.destroy true

    @_template.onRendered setupScrollers
    @_template.onDestroyed destroyScrollers

  setupOnCreated: ->
    return unless @options.onCreated?
    @_template.onCreated @options.onCreated

  setupOnRendered: ->
    return unless @options.onRendered?
    @_template.onRendered @options.onRendered

  setupOnDestroyed: ->
    return unless @options.onDestroyed?
    @_template.onDestroyed @options.onDestroyed

App.Template = (name, options) -> new AppTemplate name, options

@App ?= {}
class App.TextEditor

  constructor: (@tmplName) ->
    @tmpl = Template[@tmplName]
    @bindToTemplateCallbacks()

  bindToTemplateCallbacks: ->
    self = @

    @tmpl.onRendered  ->
      editables = @findAll '[editable]'
      self.setupEditors editables

      self.templateInstance = @
      @$editables = $ editables

      @$editables.off 'blur.textEditor'
      @$editables.on 'blur.textEditor', (evnt) ->
        $elem   = $ @
        self.handleBlur $elem

      if @data?.set_focus
        @$editables.focus()
        document.execCommand 'selectAll', false, null

    @tmpl.onDestroyed ->
      self.destroyEditors()
      @$editables.off 'blur.textEditor'

  setupEditors: (@editables) ->
    @textEditors = new MediumEditor @editables,
      toolbar:
        buttons: [
          'bold', 'italic', 'underline', 'anchor'
        ]
      disableReturn: true
      anchor:
        targetCheckbox: true
      placeholder: false

  destroyEditors: ->
    @textEditors.destroy() if @textEditors?

  handleBlur: ($elem) ->
    self     = @
    content  = s.trim $elem.html()
    key      = $elem.data 'key'
    id       = $elem.data 'id'

    # $elem.empty()
    console.info content, $elem.data( 'content' )
    if content isnt $elem.data( 'content' )
      $elem.empty()
      $elem.data 'content', content

    if key is "paragraph"
      App.collections.PostComponents.updateContent id, content
    else
      App.collections.Posts.updateContent id, key, content

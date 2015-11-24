@App ?= {}

FORM_INPUTS = 'select, input, textarea'
FORM_EVENTS = 'focus, change'

class App.Form
  constructor: (@form) ->
    @$form = $(@form)
    @extendForm()
    new App.FormErrors @form

  extendForm: ->
    @form.form = @
    @form.destroy = => @destroy()

  destroy: ->
    @form.formErrors.destroy()
    delete @form.forms

class App.FormErrors
  constructor: (@form) ->
    @$form = $(@form)
    @extendForm()

  extendForm: ->
    @form.formErrors = @
    @$form.on FORM_EVENTS, FORM_INPUTS, ->
      console.info 'form event detected', @, arguments

  destroy: ->
    @$form.off FORM_EVENTS, FORM_INPUTS
    delete @form.formErrors

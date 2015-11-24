Template.PostParagraph.helpers
  classes: ->
    classes = ['post-paragraph']

    if @unverified? and @unverified
      classes.push 'unverified'

    return classes.join ' '

Template.PostParagraph.events
  'keydown [editable]' : (evnt, tmpl) ->
    console.info '123'
    if evnt.keyCode is 13
      App.Collections.PostComponents.addComponent 'paragraph', @_id, @post_id

new App.TextEditor 'PostParagraph'

# Template.PostParagraph.onRendered ->
#   @mediumEditors = new MediumEditor @findAll('[editable]'),
#     toolbar:
#       buttons: [
#         'bold', 'italic', 'underline', 'anchor'
#       ]
#     anchor:
#       targetCheckbox: true
#     placeholder: false
#
# Template.PostParagraph.onDestroyed ->
#   @mediumEditors.destroy()

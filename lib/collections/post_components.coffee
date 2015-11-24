App.Collection 'PostComponents',
  schema:
    type:
      type: String
    content:
      type: String
    post_id:
      type: String
    position:
      type: Number
    owner:
      type: String
      autoValue: ->
        console.info 'autoValue', @
        @value or Meteor.userId() unless @isUpdate
      denyUpdate: true

  create: (postID) ->
    @insert
      type: 'paragraph'
      content: 'Curabitur blandit tempus porttitor. Sed posuere consectetur est at lobortis. Curabitur blandit tempus porttitor. Etiam porta sem malesuada magna mollis euismod.'
      post_id: postID
      position: 0

  new: (postID, afterID) ->
    newComponent =
      type: 'new'
      content: 'New component'
      post_id: postID

    if afterID?
      prevComponent = @findOne afterID
      newComponent.position = prevComponent.position + 1
      @find({post_id: postID, position: $gt: prevComponent.position}).forEach (component) =>
        @update component._id, {$inc: position: 1}
    else
      lastComponent = @findOne( {post_id: postID}, {sort: position: -1} )
      newComponent.position = lastComponent.position + 1

    @insert newComponent

  updateContent: (id, content) ->
    @update id, $set: content: content

return
@App ?= {}
App.Collections ?= {}

BLANK_COMPONENTS =
  paragraph:
    type: 'paragraph'
    content: '<p>Post paragraph</p>'
    post_id: null
    position: 0
  image:
    type: 'image'
    src: null
    post_id: null
    position: 0

App.Collections.PostComponents = new Mongo.Collection 'PostComponents'

App.Collections.PostComponents.create = (postID) ->
  newComponent         = _.extend {}, BLANK_COMPONENTS.paragraph
  newComponent.post_id = postID

  App.Collections.PostComponents.insert newComponent

App.Collections.PostComponents.updateParagraph = (id, content) ->
  App.Collections.PostComponents.update id, $set:
    content: content
    updated_at: new Date()

App.Collections.PostComponents.addComponent = (type, afterID, postID) ->
  prevComponent         = App.Collections.PostComponents.findOne afterID
  prevComponentPosition = prevComponent.position

  newComponent           = _.extend {}, BLANK_COMPONENTS[type]
  newComponent.position  = prevComponentPosition + 1
  newComponent.post_id   = postID
  newComponent.set_focus = true

  componentsAfterPrev = App.Collections.PostComponents.find {post_id: postID, position: $gt: prevComponentPosition}
  componentsAfterPrev.forEach (component) ->
    console.info 'component', component
    App.Collections.PostComponents.update component._id, { $inc: position: 1 }

  App.Collections.PostComponents.insert newComponent

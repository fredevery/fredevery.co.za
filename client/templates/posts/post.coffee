App.Template 'Post',
  subscriptions:
    'PostComponents': -> post_id: @_id

  helpers:
    postComponents: ->
      App.collections.PostComponents.find( {post_id: @_id}, {sort: position: 1} )

    componentTemplate: ->
      if @type is "new"
        "NewComponent"
      else
        "Post#{s.capitalize( s.camelcase( @type ))}"

    formattedDateTime: ->
      return moment(@created_at).format('MMMM Do YYYY, HH:mm:ss')

    isEditable: ->
      return Meteor.userId()?

    showFeatureImgUploader: ->
      return Meteor.userId()? and not @feature_img?

    featureImgCallbacks: ->
      formData: =>
          componentID: @_id
          postID: @post_id
      finished: (index, fileInfo, context) =>
        App.Collections.Posts.update @_id, $set: feature_img: fileInfo.path

  events:
    'click .add-component' : (evnt, tmpl) ->
      App.collections.PostComponents.new @post_id, @_id

Template.PostImage.helpers
  classes: ->
    "full-width-img"

  uploadComplete: ->
    {
      formData: =>
        {
          componentID: @_id
          postID: @post_id
        }
      finished: (index, fileInfo, context)=>
        App.Collections.PostComponents.update @_id, $set: src: fileInfo.path
    }

App.Collection 'Posts',
  schema:
    title:
      type: String
    disclaimer:
      type: String
      optional: true
    created_at:
      type: Date
      autoValue: -> new Date() unless @isSet
      denyUpdate: true
    slug:
      type: String
    updated_at:
      type: Date
      autoValue: -> new Date()
    owner:
      type: String
      autoValue: -> Meteor.userId() unless @isSet
      denyUpdate: true

  create: ->
    postID = @insert
      title: 'New Post'
      disclaimer: 'Post Disclaimer'
      slug: 'new-post-' + Date.now()

    App.collections.PostComponents.create postID

    return @findOne postID

return

@App ?= {}
App.Collections ?= {}

BLANK_POST =
  title: '<p>Post Title</p>'
  created_at: new Date()
  disclaimer: 'Post Disclaimer'

PostsCollection = new Mongo.Collection 'Posts'
App.Collections.Posts = PostsCollection

App.Collections.Posts.create = ->
  BLANK_POST.slug = 'new-post-' + Date.now()
  postID = App.Collections.Posts.insert BLANK_POST
  App.Collections.PostComponents.create postID
  return App.Collections.Posts.findOne postID

App.Collections.Posts.updateContent = (id, key, content) ->
  updatedContent = {}
  updatedContent[key] = content

  if key is "title"
    updatedContent.slug = s.slugify( s.stripTags(content) )

  App.Collections.Posts.update { _id: id }, { $set: updatedContent }, ->
    Router.go "/#{updatedContent.slug}"

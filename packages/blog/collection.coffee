App.collections ?= {}
App.schemas ?= {}

DEFAULT_ALLOWS =
  insert: (userId, doc) -> userId is doc.owner
  update: (userId, doc, fields, modifier) -> userId is doc.owner
  remove: (userId, doc) -> userId is doc.owner
  fetch: ['owner']

DEFAULT_DENYS =
  insert: (userId, doc) -> userId isnt doc.owner
  update: (userId, doc, fields, modifier) -> userId isnt doc.owner
  remove: (userId, doc) -> userId isnt doc.owner
  fetch: ['owner']

DEFAULT_METHODS =
  insert: (doc) ->
    @_collection.insert doc

  update: (selector, modifier, options) ->
    console.info selector, modifier, options
    @_collection.update selector, modifier, options

  remove: (selector) ->
    @_collection.remove selector

class AppCollection
  _collection: null

  constructor: (@collectionName, @options) ->
    check @options, Object
    check @options.schema, Object

    _.extend @, @options

    console.info 'AppCollection', @options, @

    @setupCollection()
    @setupSchema()
    @setupPermissions()
    @setupMethods()

  setupCollection: ->
    @_collection = new Mongo.Collection @collectionName
    App.collections[@collectionName] = @

  setupSchema: ->
    @_schema = new SimpleSchema @schema
    @_collection.attachSchema @_schema
    App.schemas[@collectionName] = @_schema

  setupPermissions: ->
    return unless Meteor.isServer

    allows = _.extend {}, DEFAULT_ALLOWS, @options.allows
    denys  = _.extend {}, DEFAULT_DENYS, @options.denys

    @_collection.allow allows
    @_collection.deny denys

  setupMethods: ->
    methods = _.extend {}, DEFAULT_METHODS, @options.methods
    namedMethods = {}
    self = @

    bindMethod = (methodName, methodFunc) ->
      namedMethods[methodName] = ->
        _.extend @, self
        methodFunc.apply @, arguments

    for methodName, methodFunc of methods
      methodName = "#{@collectionName}:#{methodName}"
      bindMethod methodName, methodFunc

    Meteor.methods namedMethods


  # Collection methods
  find: (selector, options) ->
    @_collection.find selector, options

  findOne: (selector, options) ->
    @_collection.findOne selector, options

  insert: (doc, callback) ->
    @_collection.insert doc, callback
    # Meteor.call "#{@collectionName}:insert", doc, callback

  update: (selector, modifier, options, callback) ->
    @_collection.update selector, modifier, options, callback
    # Meteor.call "#{@collectionName}:update", selector, modifier, options, callback

  remove: (selector, callback) ->
    Meteor.call "#{@collectionName}:remove", selector, callback

App.Collection = (name, options) -> new AppCollection name, options

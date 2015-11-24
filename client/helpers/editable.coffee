Template.registerHelper "editable", (options) ->
  # console.info 'editable', @, arguments
  data =
    id: @_id

  if _.isString(options)
    data.key = options
  else if _.isObject(options)
    for key,value of options.hash
      data[key] = value

  editableAttributes = {}

  if Meteor.userId()?
    editableAttributes.editable = true
    for key,value of data
      editableAttributes["data-#{key}"] = value

  return editableAttributes

App.Publication = (name, publicationFunc) ->
  Meteor.publish name, publicationFunc

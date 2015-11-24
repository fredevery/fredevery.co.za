Meteor.methods
  loginUser: (loginData) ->
    userCount = Meteor.users.find().count()

    if userCount is 0
      response = Accounts.createUser loginData

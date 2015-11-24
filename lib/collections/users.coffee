Shower
  id: 'LoginForm'
  template: 'LoginForm'
  fields:
    email:
      required: true
      format: 'email'
    password:
      required: true
      rules:
        minLength: 6

  method: (formData, tmplData) ->
    Shower.LoginForm.validate formData

  onSuccess: (validData) ->
    Meteor.call 'loginUser', validData, (error) ->
      unless error
        Meteor.loginWithPassword validData.email, validData.password


  onFailure: (fields, formHandle) ->
    console.info @, fields, formHandle
    Shower.Utils.failureCallback fields, formHandle

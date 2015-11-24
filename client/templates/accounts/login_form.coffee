Template.LoginForm.onRendered ->
  form = @find('#LoginForm')
  new App.Form form

Template.LoginForm.onDestroyed ->
  @find('#LoginForm').destroy()

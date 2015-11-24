App.Template 'AboutIndex',
  helpers:
    currentAge: ->
      dob = moment('1983-07-31')
      console.info dob.toNow(true)
      dob.toNow true

    pageHeight: -> window.innerHeight

  scrollers:
    '.page-content' :
      options:
        scrollbars: true
        scrollingX: false

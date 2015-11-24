Meteor.startup ->
  UploadServer.init
    tmpDir: process.env.PWD + '/.uploads/tmp'
    uploadDir: process.env.PWD + '/.uploads'
    checkCreateDirectories: true
    overwrite: true
    getDirectory: (fileInfo, formData) ->
      subDir = []
      if fileInfo.type.indexOf('image') > -1
        subDir.push 'images'

      if formData.postID
        subDir.push formData.postID

      return subDir.join '/'

    validateRequest: (req) ->
      console.info 'validate request'
      return false

    validateFile: (file) ->
      # console.info file
      return false

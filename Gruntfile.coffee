module.exports = (grunt) ->

  # Project configuration.
  grunt.initConfig
    pkgFile: 'package.json'

    'npm-publish':
      options:
        access: "public"

  grunt.loadTasks 'tasks'

  grunt.registerTask 'release', 'Build, bump and publish to NPM.', (type) ->
    grunt.task.run [
      "npm-bump:#{type ? 'patch'}"
      'npm-publish'
    ]

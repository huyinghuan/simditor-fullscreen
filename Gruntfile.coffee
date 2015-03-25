module.exports = (grunt)->
  grunt.initConfig(
    pkg: grunt.file.readJSON('package.json'),
    coffee:
      compile:
        files:
          "lib/simditor-fullscreen.js":"src/simditor-fullscreen.coffee"
  )
  grunt.loadNpmTasks('grunt-contrib-coffee');
  grunt.registerTask 'default', ['coffee:compile']
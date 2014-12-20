#===============================================================================
# grunt-contrib-shell
#
# Runs tasks via the command line, spawning a new process for each.
#===============================================================================

module.exports = (grunt) ->
  grunt.config.set "shell",
    mongodb:
      command: 'mongod --dbpath .db'
      options:
        async: false
        stdout: false
        stderr: true
        failOnError: true
        execOptions:
          cwd: '.'

    debug:
      command: 'node-debug app.js'
      options:
        async: false
        stdout: true
        stderr: true
        failOnError: true
        execOptions:
          cwd: '.'

  grunt.loadNpmTasks('grunt-shell-spawn')
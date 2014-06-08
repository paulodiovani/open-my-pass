module.exports = (grunt) ->

  # project configuration
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'

    # Observe file modifications
    watch:
      gruntfile:
        files: ['Gruntfile.coffee']
        tasks: ['coffeelint:gruntfile']

      makecoffee:
        files: ['src/**/*.coffee']
        tasks: ['coffeelint:sources', 'coffee:browser', 'mochaTest:test']

      test:
        files: ['test/*.coffee']
        tasks: ['coffeelint:tests', 'mochaTest:test']

    # Check for syntax
    coffeelint:
      gruntfile: ['Gruntfile.coffee']
      sources: ['src/**/*.coffee']
      tests: ['test/*.coffee']
      options:
        configFile: 'coffeelint.json'

    # Compile files
    coffee:
      browser:
        expand: true
        flatten: false
        cwd: 'src/'
        src: ['**/*.coffee']
        dest: './public/js/'
        ext: '.js'

    # Run Mocha tests
    mochaTest:
      options:
        reporter: 'spec'
        require: 'coffee-script/register'
      test:
        src: ['test/*.coffee']

  # load plugins
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-coffeelint'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-mocha-test'

  # default task(s)
  grunt.registerTask 'default', [
    'coffeelint:gruntfile', 'coffeelint:sources', 'coffeelint:tests'
    'coffee:browser'
    'mochaTest:test'
    'watch'
  ]
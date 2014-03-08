module.exports = (grunt) ->
  grunt.initConfig
    coffee:
       compileJoined:
         options: join: true
         files: 'javascripts/application.js': [
            'javascripts/src/config/**/*.coffee'
           ,'javascripts/src/app.coffee'
           ,'javascripts/src/entities/**/*.coffee'
           ,'javascripts/src/entities/*.coffee'
           ,'javascripts/src/views/**/*.coffee'
           ,'javascripts/src/apps/**/*.coffee'
         ], 'javascripts/spec.js': [ 'javascripts/spec/**/**/*.coffee' ]


    assets: {
      underscore:   'javascripts/vendor/underscore.js',
      backbone:     'javascripts/vendor/backbone.js',
      marionette:   'javascripts/vendor/backbone.marionette.js',
      jquery:       'javascripts/vendor/jquery.min.js',
      sinon:        'javascripts/vendor/sinon.js',
      jasmineSinon: 'javascripts/vendor-sinon/lib/jasmine-sinon.js'
    }

    eco:
      app: files: 'javascripts/templates.js': ['javascripts/src/**/*.eco']

    sass:
      options:
        loadPath: ['stylesheets/vendor/scss']
      dist:
        outputStyle: 'compressed'
        files: 'stylesheets/style.css' : 'stylesheets/src/style.scss'

    watch:
      coffee:
        files: ['javascripts/src/*.coffee','javascripts/src/**/*.coffee']
        tasks: ['coffee']
      eco:
        files: 'javascripts/src/**/*.eco'
        tasks: ['eco']
      sass:
        files: 'stylesheets/src/*.scss'
        tasks: ['sass']

    jasmine:
      app:
        src: 'javascripts/application.js'
        options:
          specs: 'javascripts/spec.js'
          vendor : [
            '<%= assets.jquery %>',
            '<%= assets.underscore %>',
            '<%= assets.backbone %>',
            '<%= assets.sinon %>',
            '<%= assets.marionette %>'
          ]
          outfile: '_SpecRunner.html'
          keepRunner: true
        #helpers: 'spec/*Helper.js'



  grunt.loadNpmTasks 'grunt-eco'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-less'
  grunt.loadNpmTasks 'grunt-contrib-jasmine'
  grunt.loadNpmTasks 'grunt-contrib-sass'

  grunt.registerTask 'default', ['coffee','eco','sass']
  grunt.registerTask 'test', ['coffee','eco','sass', 'jasmine']

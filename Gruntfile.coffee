module.exports = (grunt) ->

    grunt.task.loadNpmTasks 'grunt-contrib-coffee'
    grunt.task.loadNpmTasks 'grunt-contrib-watch'
    grunt.task.loadNpmTasks 'grunt-contrib-jshint'
    grunt.task.loadNpmTasks 'grunt-contrib-uglify'
    grunt.task.loadNpmTasks 'grunt-mocha-test'

    grunt.initConfig
        pkg: 
            grunt.file.readJSON('package.json')

        coffee:
          dist:
            src: ['src/**/*.coffee']
            dest: 'dist/bin/dung.js'

        watch:
            dist:
                files: '<%= coffee.dist.src %>'
                tasks: [ 'coffee:dist', 'jshint:dist', 'mochaTest:dist', 'uglify:dist' ]

        jshint:
            options:
                '-W040': true #possible strict violation -- can't get around this with coffeescript
                '-W097': true #use strict -- we're not going to use strict
                '-W117': true #undefined variable for exports

            dist:
                ['dist/bin/dung.js']

        mochaTest:
            dist:
                options:
                    ui: 'bdd'
                    reporter: 'nyan'
                src:
                    'test/src/**/*.coffee'

        uglify:
            dist:
                options:
                    sourceMap: 'dist/bin/dung.map.js'
                files:
                    'dist/bin/dung.min.js': 'dist/bin/dung.js'

    grunt.event.on 'coffee.error', (msg) ->
        grunt.log.write msg

    grunt.registerTask 'test', ['coffee', 'jshint', 'mochaTest']
    grunt.registerTask 'default', ['coffee', 'jshint', 'mochaTest', 'uglify']
    grunt.registerTask 'dev', ['watch']
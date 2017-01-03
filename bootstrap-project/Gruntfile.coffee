module.exports = (grunt) ->
  grunt.initConfig
    clean: ['target']
    copy:
      main:
        files: [
          {expand: true, cwd: 'lib/main', src: ['**'], dest: 'target/lib'}
          {expand: true, cwd: 'src/main', src: ['js/**'], dest: 'target'}
          {expand: true, cwd: 'src/main/resources', src: ['**'], dest: 'target'}
        ]
    coffee:
      compile:
        options:
          join: true
        files:
          'target/js/browserRun.js': ['src/main/coffee/browserRun.coffee']
          'target/js/chaotive.fw.js': ['src/main/coffee/CHAOTIVE/FW/boot.coffee', 'src/main/coffee/CHAOTIVE/FW/chaotive.fw.coffee', 'src/main/coffee/CHAOTIVE/FW/**/*.coffee']
          'target/js/sample.js': ['src/main/coffee/SAMPLE/sample.coffee', 'src/main/coffee/SAMPLE/**/*.coffee']
    'ftp-deploy':
      build:
        auth:
          host: 'ftp.chaotive.cl'
          port: 21
          authKey: 'key1'
        src: 'target'
        dest: '/httpdocs/chaotive-framework/bootstrap-project'
        forceVerbose: true
    mochaTest:
      options:
        reporter: 'spec'
      src: ['src/test/coffee/test.coffee']

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-mocha-test'
  grunt.loadNpmTasks('grunt-contrib-copy')
  grunt.loadNpmTasks('grunt-contrib-clean')
  grunt.loadNpmTasks('grunt-ftp-deploy')

  grunt.registerTask 'default', ['coffee', 'mochaTest']
  grunt.registerTask 'build', ['clean', 'coffee', 'copy']
  grunt.registerTask 'release', ['build', 'ftp-deploy']

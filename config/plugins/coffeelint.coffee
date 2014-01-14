module.exports = (lineman) ->
  config:
    loadNpmTasks: lineman.config.application.loadNpmTasks.concat('grunt-coffeelint')

    prependTasks:
      common: lineman.config.application.prependTasks.common.concat('coffeelint')

    coffeelint:
      app: [
        lineman.config.files.coffee.app
      ]

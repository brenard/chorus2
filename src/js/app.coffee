## Our global objects
@helpers = {}
@config = {
  static:
    jsonRpcEndpoint: 'jsonrpc'
    socketsHost: location.hostname
    socketsPort: 9090
    ajaxTimeout: 5000
}

## The App Inance
@Kodi = do (Backbone, Marionette) ->

  App = new Backbone.Marionette.Application()

  App.addRegions
    root: "body"

  App.vent.on "shell:ready", (options) =>
    App.startHistory()

  App

$(document).ready =>
  @Kodi.start()


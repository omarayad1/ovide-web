(->
  proxiedSync = Backbone.sync
  Backbone.sync = (method, model, options) ->
    options or (options = {})
    options.crossDomain = true  unless options.crossDomain
    options.xhrFields = withCredentials: false  unless options.xhrFields
    proxiedSync method, model, options

  return
)()

window.OvideWeb =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    'use strict'
    console.log 'Hello from Backbone!'

$ ->
  'use strict'
  OvideWeb.init();
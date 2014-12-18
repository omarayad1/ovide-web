'use strict';

class OvideWeb.Routers.Main extends Backbone.Router
    routes:
        '': 'main'

ide = new OvideWeb.Routers.Main()

ide.on 'route:main', ->
    mainView = new OvideWeb.Views.Main()
    mainView.render()
    editorView = new OvideWeb.Views.Editor()
    editorView.render()
    optionsView = new OvideWeb.Views.Options()
    optionsView.setElement('#options')
    optionsView.render()
    logView = new OvideWeb.Views.Log()
    logView.setElement('.message-log')
    logView.render()

Backbone.history.start()

'use strict';

class OvideWeb.Routers.Main extends Backbone.Router
    routes:
        '': 'main'

ide = new OvideWeb.Routers.Main()

ide.on 'route:main', ->
    window.OvideWeb.Files = new OvideWeb.Collections.Files()
    OvideWeb.Files.fetch()
    OvideWeb.EditorData = new OvideWeb.Models.EditorData({'data': 'module verilogIsFun()\n endmodule'})
    mainView = new OvideWeb.Views.Main()
    mainView.render()
    editorView = new OvideWeb.Views.Editor({'model': OvideWeb.EditorData })
    editorView.render()
    optionsView = new OvideWeb.Views.Options()
    optionsView.setElement('#options')
    optionsView.render()
    logView = new OvideWeb.Views.Log()
    logView.setElement('.message-log')
    logView.render()
    treeView = new OvideWeb.Views.Tree({'collection': OvideWeb.Files})
    treeView.setElement('.file-tree')
    treeView.render()

Backbone.history.start()

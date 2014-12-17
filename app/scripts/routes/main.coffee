'use strict';

class OvideWeb.Routers.Main extends Backbone.Router
    routes:
        '': 'main'

ide = new OvideWeb.Routers.Main()

ide.on 'route:main', ->
    $('body').html 'bateee5'

Backbone.history.start()

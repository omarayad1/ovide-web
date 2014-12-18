'use strict';

class OvideWeb.Views.Tree extends Backbone.View

  template: JST['app/scripts/templates/tree.ejs']

  tagName: 'div'

  id: ''

  className: ''

  events: {}

  el: $ '.file-tree'

  initialize: () ->
    # @listenTo @model, 'change', @render
    $ ->
        $('.file-tree').jstree()
    @render()
  render: () ->
    # @$el.html @template(@model.toJSON())

    @$el.html @template()

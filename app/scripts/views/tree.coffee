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
        $('.file-tree').on 'select_node.jstree', (e, data) ->
            $.post 'http://ovide-api.herokuapp.com/file/read/', { 'filename': data.node.text }, (data) ->
                OvideWeb.EditorData.set({'data': data})
    @render()
  render: () ->
    # @$el.html @template(@model.toJSON())

    @$el.html @template()

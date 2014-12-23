'use strict';

class OvideWeb.Views.Tree extends Backbone.View

    template: JST['app/scripts/templates/tree.ejs']

    tagName: 'div'

    id: ''

    className: ''

    events: {}

    el: $ '.file-tree'

    initialize: () ->
        @listenTo @collection, 'add', @render
        @render()
    render: () ->
        @$el.html @template({collection: @collection.toJSON()})
        $.jstree.create('.file-tree')
        $('.file-tree').on 'select_node.jstree', (e, nodeSel) ->
            $.post OvideWeb.EditorData.url, {filename: nodeSel.node.text}, (data) ->
                OvideWeb.EditorData.set({data: data})


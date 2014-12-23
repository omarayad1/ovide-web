'use strict';

class OvideWeb.Views.Tree extends Backbone.View

    template: JST['app/scripts/templates/tree.ejs']

    tagName: 'div'

    id: ''

    className: ''

    el: $ '.file-tree'
    initialize: () ->
        @listenTo @collection, 'add', @render
        $('.file-tree').on 'select_node.jstree', (e, nodeSel) ->
            if nodeSel.node.li_attr.class != 'new-file'
                $.get 'http://ovide-api.herokuapp.com/file/read/' + nodeSel.node.text, (data) ->
                    OvideWeb.EditorData.set({data: data})
    render: () ->
        @$el.html @template({collection: @collection.toJSON()})
        $.jstree.create('.file-tree')
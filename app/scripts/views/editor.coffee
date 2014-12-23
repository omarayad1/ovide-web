'use strict';

class OvideWeb.Views.Editor extends Backbone.View

  template: JST['app/scripts/templates/editor.ejs']

  tagName: 'div'

  id: ''

  className: ''

  events: {}

  el: $ '#editor'
  editor: ->
    ace.edit 'editor'
  initialize: () ->
    @editor = ace.edit 'editor'
    @editor.setTheme "ace/theme/solarized_light"
    @editor.setFontSize '13pt'
    @editor.session.setMode "ace/mode/verilog"
    @listenTo @model, 'change', @render
  render: () ->
    @editor.setValue(@model.toJSON()['data'])
    @$el.html @template(@model.toJSON())

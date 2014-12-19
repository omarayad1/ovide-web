'use strict';

class OvideWeb.Views.Editor extends Backbone.View

  template: JST['app/scripts/templates/editor.ejs']

  tagName: 'div'

  id: ''

  className: ''

  events: {}

  el: $ '#editor'

  initialize: () ->
    # @listenTo @model, 'change', @render
    editor = ace.edit 'editor'
    editor.setTheme "ace/theme/solarized_light"
    editor.setFontSize '13pt'
    editor.session.setMode "ace/mode/verilog"
    @render()
  render: () ->
    @$el.html @template()

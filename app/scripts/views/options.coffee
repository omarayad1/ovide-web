'use strict';

class OvideWeb.Views.Options extends Backbone.View

  template: JST['app/scripts/templates/options.ejs']

  tagName: 'div'

  id: ''

  className: ''

  events:
    'click .save-file': 'saveFile'
    'click .check-syntax': 'checkSyntax'
    'click .compile': 'compile'
    'click .tb-gen': 'generateTestbench'
    'click .get-output': 'getOutput'

  el: $ '#options'

  initialize: () ->
    # @listenTo @model, 'change', @render
    @render()

  render: () ->
    @$el.html @template()

  getSelectedNode: ->
    $('.file-tree').jstree()
    return $('#' + $('.file-tree').jstree().get_selected()[0]).text()
  
  saveFile: ->
    editor = ace.edit 'editor'
    content = editor.getSession().getValue()
    filename = @getSelectedNode
    $.post('http://ovide-api.herokuapp.com/file/update', {filename: filename, file_content: content})

  checkSyntax: ->
    @saveFile
    $.post 'http://ovide-api.herokuapp.com/verilog/check_syntax', {'filename': @getSelectedNode()}, (data) ->
      $('.message-log').text(data)
  
  compile: ->
    @saveFile
    $.post 'http://ovide-api.herokuapp.com/verilog/compile', {'filename': @getSelectedNode()}, (data) ->
      $('.message-log').text(data)

  generateTestbench: ->
    @saveFile
    $.post 'http://ovide-api.herokuapp.com/verilog/generate_testbench', {'filename': @getSelectedNode()}

  getOutput: ->
    @saveFile
    $.post 'http://ovide-api.herokuapp.com/verilog/get_output', {'filename': @getSelectedNode()}, (data) ->
      $('.message-log').text(data)
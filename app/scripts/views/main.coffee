'use strict';

class OvideWeb.Views.Main extends Backbone.View

  template: JST['app/scripts/templates/main.ejs']

  tagName: 'div'

  id: ''

  className: ''

  events: 
    'click .new-file-save': 'saveFile'
  el: $ '.container'
  initialize: () ->
    # @listenTo @model, 'change', @render
    @render()

  render: () ->
    @$el.html @template()

  saveFile: ->
    $.post('http://ovide-api.herokuapp.com/file/create', {'filename': $('.file-name-save').val()})
    OvideWeb.Files.fetch()
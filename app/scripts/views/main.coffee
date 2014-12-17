'use strict';

class OvideWeb.Views.Main extends Backbone.View

  template: JST['app/scripts/templates/main.ejs']

  tagName: 'div'

  id: ''

  className: ''

  events: {}

  initialize: () ->
    @listenTo @model, 'change', @render

  render: () ->
    @$el.html @template(@model.toJSON())
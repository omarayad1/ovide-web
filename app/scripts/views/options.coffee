'use strict';

class OvideWeb.Views.Options extends Backbone.View

  template: JST['app/scripts/templates/options.ejs']

  tagName: 'div'

  id: ''

  className: ''

  events: {}

  el: $ '#options'

  initialize: () ->
    # @listenTo @model, 'change', @render
    @render()

  render: () ->
    @$el.html @template()

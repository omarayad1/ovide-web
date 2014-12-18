'use strict';

class OvideWeb.Views.Log extends Backbone.View

  template: JST['app/scripts/templates/log.ejs']

  tagName: 'div'

  id: ''

  className: ''

  events: {}
  el: $ '.message-log'
  initialize: () ->
    #@listenTo @model, 'change', @render
    @render()
  render: () ->
    @$el.html @template()

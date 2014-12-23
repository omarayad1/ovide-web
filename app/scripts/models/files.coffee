'use strict';

class OvideWeb.Models.Files extends Backbone.Model
  url: 'http://ovide-api.herokuapp.com/file/:id',

  initialize: () ->

  defaults: {}

  validate: (attrs, options) ->

  parse: (response, options) ->
    response

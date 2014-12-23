'use strict';

class OvideWeb.Models.EditorData extends Backbone.Model
  url: 'http://ovide-api.herokuapp.com/file/read/'

  data: "module verilogIsFun()\n endmodule"

  initialize: () ->

  defaults: {}

  validate: (attrs, options) ->

  parse: (response, options) ->
    console.log response
    response

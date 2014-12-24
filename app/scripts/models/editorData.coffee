'use strict';

class OvideWeb.Models.EditorData extends Backbone.Model
  data: "module verilogIsFun()\n endmodule"

  initialize: () ->

  defaults: {}

  validate: (attrs, options) ->

  parse: (response, options) ->
    response

'use strict';

class OvideWeb.Collections.Files extends Backbone.Collection
  url: 'http://ovide-api.herokuapp.com/file'
  model: OvideWeb.Models.Files

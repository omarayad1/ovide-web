# global beforeEach, describe, it, assert, expect
"use strict"

describe 'Files Model', ->
  beforeEach ->
    @FilesModel = new OvideWeb.Models.Files();

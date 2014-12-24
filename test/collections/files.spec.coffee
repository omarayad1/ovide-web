# global beforeEach, describe, it, assert, expect
"use strict"

describe 'Files Collection', ->
  beforeEach ->
    @FilesCollection = new OvideWeb.Collections.Files()

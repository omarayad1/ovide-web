# global beforeEach, describe, it, assert, expect
"use strict"

describe 'Main Router', ->
  beforeEach ->
    @MainRouter = new OvideWeb.Routers.Main();

  it 'index route', ->


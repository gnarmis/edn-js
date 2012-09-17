EDN = require "../../lib/edn.js" if module?

describe "Simple Specs", ->
  beforeEach ->

  it "should interpret addition", ->
    expect(
      EDN.parse("1+1")
    ).toEqual 2
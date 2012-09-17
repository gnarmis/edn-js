EDN = require "../../lib/edn.js" if module?

describe "Simple Specs", ->
  it "should consume Boolean values", ->
    expect(
      EDN.parse("false")
    ).toEqual(false)&&
    expect(
      EDN.parse("true")
    ).toEqual(true)

  it "should consume nil values", ->
    expect(
      EDN.parse("nil")
    ).toEqual("nil")
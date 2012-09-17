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
    ).toEqual(undefined)

  it "should consumer integers", ->
    expect(
      EDN.parse("42").integer
    ).toEqual("42")&&
    expect(
      EDN.parse("-42").integer
    ).toEqual("-42")&&
    expect(
      EDN.parse("42N").precision
    ).toEqual("N")

  it "should consume characters", ->
    expect(
      EDN.parse("\\\\").character
    ).toEqual("\\\\")&&
    expect(
      EDN.parse("\\newline").character
    ).toEqual("\\newline")&&
    expect(
      EDN.parse("\\space").character
    ).toEqual("\\space")&&
    expect(
      EDN.parse("\\tab").character
    ).toEqual("\\tab")

  it "should not recognize \\ followed by a space as a character", ->
    expect(
      EDN.parse("\\ ")
    ).toEqual(undefined)



(function() {
  var EDN;

  if (typeof module !== "undefined" && module !== null) {
    EDN = require("../../lib/edn.js");
  }

  describe("Simple Specs", function() {
    it("should consume Boolean values", function() {
      return expect(EDN.parse("false")).toEqual(false) && expect(EDN.parse("true")).toEqual(true);
    });
    return it("should consume nil values", function() {
      return expect(EDN.parse("nil")).toEqual("nil");
    });
  });

}).call(this);

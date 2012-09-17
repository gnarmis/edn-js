(function() {
  var EDN;

  if (typeof module !== "undefined" && module !== null) {
    EDN = require("../../lib/edn.js");
  }

  describe("Simple Specs", function() {
    it("should consume Boolean values", function() {
      return expect(EDN.parse("false")).toEqual(false) && expect(EDN.parse("true")).toEqual(true);
    });
    it("should consume nil values", function() {
      return expect(EDN.parse("nil")).toEqual(void 0);
    });
    it("should consumer integers", function() {
      return expect(EDN.parse("42").integer).toEqual("42") && expect(EDN.parse("-42").integer).toEqual("-42") && expect(EDN.parse("42N").precision).toEqual("N");
    });
    it("should consume characters", function() {
      return expect(EDN.parse("\\\\").character).toEqual("\\\\") && expect(EDN.parse("\\newline").character).toEqual("\\newline") && expect(EDN.parse("\\space").character).toEqual("\\space") && expect(EDN.parse("\\tab").character).toEqual("\\tab");
    });
    return it("should not recognize \\ followed by a space as a character", function() {
      return expect(EDN.parse("\\ ")).toEqual(void 0);
    });
  });

}).call(this);

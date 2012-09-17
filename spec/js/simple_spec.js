(function() {
  var EDN;

  if (typeof module !== "undefined" && module !== null) {
    EDN = require("../../lib/edn.js");
  }

  describe("Simple Specs", function() {
    beforeEach(function() {});
    return it("should interpret addition", function() {
      return expect(EDN.parse("1+1")).toEqual(2);
    });
  });

}).call(this);

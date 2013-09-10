(function() {
  var Datum, root;

  Datum = (function() {
    function Datum() {
      this.tag = '';
    }

    return Datum;

  })();

  root = typeof exports !== "undefined" && exports !== null ? exports : window;

  root.Datum = Datum;

}).call(this);

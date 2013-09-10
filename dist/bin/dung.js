(function() {
  var SyncedVariable, root;

  SyncedVariable = (function() {
    function SyncedVariable(data) {
      this.data = data;
      this.synced = true;
    }

    SyncedVariable.prototype.toString = function() {
      return this.data;
    };

    return SyncedVariable;

  })();

  root = typeof exports !== "undefined" && exports !== null ? exports : window;

  root.$ = function(data) {
    return new SyncedVariable(data);
  };

}).call(this);

(function() {
  var Datum, root;

  root = typeof exports !== "undefined" && exports !== null ? exports : window;

  Datum = (function() {
    function Datum() {
      this.tag = '';
    }

    return Datum;

  })();

  root.Datum = Datum;

}).call(this);

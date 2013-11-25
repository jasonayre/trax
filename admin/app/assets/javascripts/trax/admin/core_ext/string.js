String.prototype.toDate = function() {
  var date, date_string, mday, month, segs;
  segs = this.split("-");
  date = segs.shift();
  month = segs.shift();
  mday = segs.shift();
  date_string = [month, mday, date].join("/");
  return new Date(date_string);
};

String.prototype.toParams = function () {
  var obj, p;
  obj = this.split("&").reduce(function(prev, curr, i, arr) {
      var p = curr.replace('?', '').split("=");
      prev[decodeURIComponent(p[0])] = decodeURIComponent(p[1]);
      return prev;
  }, {});
  return obj;
};
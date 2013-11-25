Date.prototype.toParam = function() {
  return (this.getFullYear() + "-" + (this.getMonth() + 1).padZero() + "-" + this.getDate().padZero() );
};

Date.prototype.addDays = function(days) {
  var date = new Date(this.valueOf());
  date.setDate(date.getDate() + days);
  return date;
};

Date.prototype.subtractDays = function(days) {
  var date = new Date(this.valueOf());
  date.setDate(date.getDate() - days);
  return date;
};

Date.prototype.incrementDay = function(days) {
  var date = new Date(this.valueOf());
  date.setDate(date.getDate() + days);
  return date;
};

Date.prototype.tomorrow = function() {
  var date = new Date(this.valueOf());
  date.setDate(date.getDate() + 1);
  return date;
};

Date.prototype.yesterday = function() {
  var date = new Date(this.valueOf());
  date.setDate(date.getDate() - 1);
  return date;
};

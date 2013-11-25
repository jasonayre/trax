angular.module('common.filters', []);

angular.module('common.filters').filter("date_time_text", function(){
  return function(input) {
    d = new Date(input);
    return d.toISOString().replace('T', ' ').split('.').shift();
  }
});

angular.module('common.filters').filter("humanize", function(){
  return function(input) {
    return input.humanize();
  };
});

angular.module('common.filters').filter("link_to", function(){
  return function(input, path, params) {
    if(_.isObject(params)) {
      return window["Routes"][path](input, params);
    } else {
      return window["Routes"][path](input);
    }
  };
});

angular.module('common.filters').filter("pretty_bool_text", function() {
  return function(input) {
    if(input) {
      return "Yes";
    } else {
      return "No";
    }
  };
});

angular.module('common.filters').filter("singularize", function(){
  return function(input) {
    return input.singularize();
  };
});

angular.module('common.filters').filter("to_lower_case", function(){
  return function(input) {
    return input.toLowerCase();
  };
});

angular.module('common.filters').filter("to_param", function() {
  return function(input) {
    if(input instanceof Date) {
      return input.toParam();
    } else {
      return input;
    }
  };
});

angular.module('common.filters').filter("to_upper_case", function(){
  return function(input) {
    return input.toUpperCase();
  };
});

angular.module('common.filters').filter("titleize", function(){
  return function(input) {
    return input.titleize();
  };
});

angular.module('common.filters').filter("truncate", function(){
  return function(input, length) {
    if(input.length > length) {
      return input.substr(0, length) + "...";
    } else {
      return input.substr(0, length);
    }
  };
});

angular.module('common.filters').filter("ucfirst", function() {
  return function(input) {
    return input.substr(0, 1).toUpperCase() + input.substr(1);
  };
});
angular.module('common.directives').directive('datepicker',
  ["$compile", "$location", function($compile, $location) {
    return  {
      restrict: "A",
      replace: false,
      link: function(scope, element, attrs) {
      default_options = {
        useLocation: false,
        callbackMethod: "",
        dateFormat: "mm/dd/yy",
        scopeAttr: ''
      };
      
      var options = _.extend(default_options, attrs);
      var picker = $(element).datepicker();
      picker.datepicker('update', scope[options["scopeAttr"]]);
      
      picker.on('changeDate', function(event) {
        var clickedDate = new Date(event.date);
        clickedDate.setDate(clickedDate.getDate() + 1);
        if(clickedDate.toParam() !== scope[options["scopeAttr"]]) {
          if(options['useLocation']) {
            segs = $location.path().split("/"+options['pathAttr']+"/");
            picker.datepicker('hide');
            
            if(segs.length > 1) {
              var newPath = [segs.shift(), options['pathAttr'], clickedDate.toParam()].join('/');
            } else {
              var newPath = [segs, options['pathAttr'], clickedDate.toParam()].join('/');
            }
            
            scope[options["scopeAttr"]] = clickedDate.toParam();
            $location.path(newPath);
            scope.$apply();
          } else {
            picker.datepicker('hide');
            var oldValue = scope[options["scopeAttr"]];
            var newValue = clickedDate.toParam();
            scope[options["scopeAttr"]] = newValue;
            scope[options["callbackMethod"]](newValue, oldValue);
            scope.$apply();
          }
        }
      });
    }
  }
}]);
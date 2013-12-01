angular.module('common.directives').directive('primaryspinner', ["$compile", function($compile) {
  return  {
    restrict: "E",
    replace: true,
    transclude: false,
    template: "<div class='spinner_wrap'></div>",
    scope: true,
    link: function(scope, element, attrs) {
      var default_options = {
        lines: 13, // The number of lines to draw
        length: 22, // The length of each line
        width: 8, // The line thickness
        radius: 30, // The radius of the inner circle
        corners: 1, // Corner roundness (0..1)
        rotate: 0, // The rotation offset
        direction: 1, // 1: clockwise, -1: counterclockwise
        color: '#8DC63F', // #rgb or #rrggbb
        speed: 1, // Rounds per second
        trail: 60, // Afterglow percentage
        shadow: true, // Whether to render a shadow
        hwaccel: false, // Whether to use hardware acceleration
        className: 'spinner', // The CSS class to assign to the spinner
        zIndex: 2e9, // The z-index (defaults to 2000000000)
        top: 'auto', // Top position relative to parent in px
        left: 'auto' // Left position relative to parent in px
      };
      
      _.coerceObjectKeysAsIntegers(attrs, "length", "width", "direction", "speed", "radius", "rotate", "lines");

      allowed_options = _.keys(default_options);
      merged_options = _.extend(default_options, attrs);
      spinner_options = _.pick(merged_options, allowed_options);
      spinner_height = spinner_options["length"] + spinner_options["radius"];
      
      scope.spinner_obj = new Spinner(spinner_options).spin(element[0]);
      scope.spinner_jq_obj = $(scope.spinner_obj.el);
      
      scope.set_position = function() {
        viewportHeight = $.viewportH();
        viewportWidth = $.viewportW();
        top_offset = (viewportHeight / 2)-10 - 53;
        parentWidth  = element.parent().outerWidth();
        
        if(_.has(attrs, "offsettop")) {
          top_offset = top_offset + (+attrs["offsettop"]);
        }
        
        element.css({position: 'fixed', height: viewportHeight, width: parentWidth, 'background-color': 'rgba(0, 0, 0, 0.15)', 'z-index': '9999'});
        scope.spinner_jq_obj.css({position: 'absolute', top: top_offset});
      };
      
      scope.set_position();
      
      scope.$root.primary_view_loading = false;

      scope.$root.$on('$stateChangeStart', function(eventObject){
        element.show();
        scope.spinner_jq_obj.fadeIn(100);
      });
      
      scope.$root.$on('$stateChangeSuccess', function(eventObject){
        console.log('state_change_end');
        scope.spinner_jq_obj.fadeOut(250);
        element.fadeOut(400);        
      });
      
      scope.$root.$watch('primary_view_loading', function(newValue, oldValue){
        if(newValue) {
          element.show();
          scope.spinner_jq_obj.fadeIn(100);          
        } else {
          element.fadeOut(400);
          scope.spinner_jq_obj.fadeOut(250);
        }
      });
    }
  }
}]);
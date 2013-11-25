angular.module('common.directives').directive('pager', ["$compile", "$document", function($compile, $document) {
  return  {
    restrict: "E",
    template: "<div class='pagination_wrap'>"+
              "<div class='pagination'>"+
              "<ul>"+
              "<li ng-if='pages_exceed_limit() && !is_current_page(1)' class='select_first_page'><a ng-click='select_first_page()'><i class='icon icon-double-angle-left'></i></a></li>"+
              "<li ng-if='has_previous_page()' class='select_previous_page'><a ng-click='select_previous_page()'><i class='icon icon-angle-left'></i></a></li>"+
              "<li ng-repeat='page in pages' ng-class='{active: is_current_page(page)}'><a ng-click='select_page(page)'>{{page}}</a></li>"+
              "<li ng-if='has_next_page()' class='select_next_page'><a ng-click='select_next_page()'><i class='icon icon-angle-right'></i></a></li>"+
              "<li ng-if='pages_exceed_limit() && !is_current_page(total_pages())' class='select_last_page'><a ng-click='select_last_page()'><i class='icon icon-double-angle-right'></i></a></li>"+
              "</ul>"+
              "</div>"+
              "<div class='pagination_actions' ui-if='opts.perPage'>"+
              "<div class='dropdown faux-dropdown per_page_action_wrap'>"+
              "<a class='scope_label dropdown-toggle per_page_toggle' ng-click='per_page_is_visible=true'>"+
              "<span>Per Page:</span> <strong><i class='icon icon-sort'></i> {{perPageValue}}</strong>"+
              "</a>"+
              "<ul class='faux-dropdown-menu per_page_dropdown' ng-show='per_page_is_visible'>"+
              "<li ng-repeat='value in perPageValues'>"+
              "<a ng-click='$parent.perPageValue = value;'>{{value}}</a>"+
              "</li>"+
              "</ul>"+
              "</div>"+
              "</div>"+
              "<div class='clear'></div>"+
              "</div>",
    replace: true,
    scope: {
      pages: '@',
    },
    link: function(scope, element, attrs) {
      var default_options = {pageLimit: 15};
      var prepared_attrs = _(attrs)
      .coerceObjectKeysAsBooleans("perPage")
      .coerceObjectKeysAsIntegers("pageLimit")
      .value();

      scope.opts = _.extend(default_options, prepared_attrs);
      
      scope.perPageValues = scope.opts.perPageValues.split(",");
      
      scope.perPageValue = scope.$parent.$eval(scope.opts.controllerObjectName+".per_page");
      
      scope.per_page_is_visible = false;
      scope.perPageEle = element.find(".per_page_toggle").first();
      
      scope.perPageEle.bind('click', function(event) {
        event.stopPropagation();
      });
      
      $document.bind('click', function(){
        scope.per_page_is_visible = false;
        scope.$apply();
      });
      
      scope.build = function() {
        if(scope.total_pages() > 1) {
          scope.pages = _.range(scope.start_at_page(), scope.end_at_page() + 1);
        } else {
          scope.pages = [1];
        }
      };
      
      scope.current_page  = function() {
        return scope.$parent.$eval(scope.opts.controllerObjectName+".current_page");
      };
      
      scope.end_at_page = function() {
        if(scope.ends_at_offset_page() >= scope.total_pages()) {
          return scope.total_pages();
        } else {
          return scope.ends_at_offset_page();
        }
      };
      
      scope.ends_at_offset_page = function() {
        return scope.current_page() + scope.page_offset();
      };

      scope.has_previous_page = function() {
        return (scope.$parent.$eval(scope.opts.controllerObjectName+".previous_page") > 0);
      };
      
      scope.has_next_page = function(){
        return (scope.$parent.$eval(scope.opts.controllerObjectName+".next_page") > 0);
      };
      
      scope.is_current_page = function(page) {
        return scope.current_page() == page;
      };
      
      scope.pages_exceed_limit = function() {
        return (scope.total_pages() > scope.opts.pageLimit);
      };
      
      scope.page_offset = function() {
        return Math.ceil(scope.opts.pageLimit / 2);
      };
            
      scope.select_page = function(page) {
        scope.$parent.$eval(scope.opts.controllerObjectName+".current_page = "+page);
      };
      
      scope.start_at_page = function() {
        if(scope.starts_at_offset_page() < 1) {
          return 1;
        } else if ((scope.total_pages() - scope.current_page()) < scope.opts.pageLimit) {
          if(scope.total_pages() - scope.opts.pageLimit > 0) {
            return scope.total_pages() - scope.opts.pageLimit;
          } else {
            return 1;
          }
        } else {
          return scope.starts_at_offset_page();
        }
      };
      
      scope.starts_at_offset_page = function() {
        return (scope.current_page() - scope.page_offset());
      };
      
      scope.select_previous_page = function(){
        scope.$parent.$eval(scope.opts.controllerObjectName+".current_page = "+ (scope.current_page() - 1));
      };
      
      scope.select_next_page = function(){
        scope.$parent.$eval(scope.opts.controllerObjectName+".current_page = "+ (scope.current_page() + 1));
      };
      
      scope.select_last_page = function(){
        scope.$parent.$eval(scope.opts.controllerObjectName+".current_page = "+ scope.total_pages() );
      };
      
      scope.select_first_page = function(){
        scope.$parent.$eval(scope.opts.controllerObjectName+".current_page = 1");
      };
      
      scope.total_pages = function() {
        return scope.$parent.$eval(scope.opts.controllerObjectName+".total_pages");
      };
      
      scope.$parent.$watch(scope.opts.controllerObjectName, function(newValue, oldValue){
        if(newValue !== undefined) {
         scope.build();
        }
      });
      
      scope.$parent.$watch(scope.opts.controllerObjectName+'.current_page', function(newValue, oldValue){
        if((newValue !== undefined) && (oldValue !== undefined)) {
          if(scope.opts.hasOwnProperty("callback")) {
            scope.$parent.$eval(scope.opts.callback);
          }
          
          scope.build();
        }
      });
      
      scope.$watch('perPageValue', function(newValue, oldValue){
        if(newValue !== oldValue) {
          scope.$parent.$eval(scope.opts.controllerObjectName+".per_page = "+ newValue);
          if(scope.$parent.$eval(scope.opts.controllerObjectName+".current_page") === 1) {
            if(scope.opts.hasOwnProperty("callback")) {
              scope.$parent.$eval(scope.opts.callback);
            }
          } else {
            scope.$parent.$eval(scope.opts.controllerObjectName+".current_page = 1");
          }
          scope.build();
        }
      });
      
    }
  }
}]);
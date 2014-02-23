module Trax
  module Core
    module Fields
      class SelectField < BaseField
        attr_accessor :name, :directives, :choices
        
        def to_html
          "<select ui-select2 ng-model=\"resource.routing_strategy\" data-placeholder=\"Routing Strategy\">
              <option value=\"\"></option>
              <option ng-repeat=\"(label, value) in field_options.routing_strategies\" value=\"{{label}}\">{{label}}</option>
          </select>".html_safe
        end
      end
    end
  end
end
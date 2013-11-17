module Trax
  module Backend
    module Concerns
      module BaseResource
        extend ActiveSupport::Concern
        included do
          puts "BEING INCLUDED"
          
          def current_site
            puts "CURRENT SITE BEING CALLED"
            @current_site ||= ::Trax::Site.by_current_host(request.host)
          end
          
          def do_something
            puts @current_site.inspect
          end
        end
      end
    end
  end
end

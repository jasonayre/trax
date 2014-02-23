module Trax
  module Admin
    class ChannelsController < ::Trax::Admin::ApplicationController
      
      respond_to :json
      
    private
    
      def begin_of_association_chain
        current_site
      end
      
    end
  end
end
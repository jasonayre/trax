module Trax
  module Admin
    class MenusController < ::Trax::Admin::ApplicationController      
      respond_to :json
      
      def index
        @collection ||= current_site.menus
        
        respond_with(@collection)
      end
    
      def show
        @resource ||= ::Trax::Channel.find(params[:id])
        respond_with(@resource)
      end
    end
  end
end
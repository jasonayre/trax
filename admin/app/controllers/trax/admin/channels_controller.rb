module Trax
  module Admin
    class ChannelsController < ::Trax::Admin::ApplicationController
      # include ::Trax::Admin::Concerns::Controllers::Taggable
      
      respond_to :json
      
      def index
        @collection ||= current_site.channels
        
        respond_with(@collection)
      end
    
      def show
        @resource ||= ::Trax::Channel.find(params[:id])
        respond_with(@resource)
      end
    end
  end
end
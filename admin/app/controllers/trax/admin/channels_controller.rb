module Trax
  module Admin
    class ChannelsController < ::Trax::Admin::ApplicationController
      respond_to :json
      def index
        @collection ||= current_site.channels
        
        respond_with(@collection)
      end
    
      def show
        @resource ||= ::Trax::Channel.find_by_slug(params[:id])
      end
    end
  end

end
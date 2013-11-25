module Trax
  module Admin
    class ChannelsController < ::Trax::Admin::ApplicationController
      def index
        @collection ||= current_site.channels
      end
    
      def show
        @resource ||= ::Trax::Channel.find_by_slug(params[:id])
      end
    end
  end

end
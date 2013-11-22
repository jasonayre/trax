module Trax
  class ChannelsController < ::Trax::ApplicationController
    def index
      puts current_site.inspect
      @collection ||= current_site.channels
    end
    
    def show
      @resource ||= ::Trax::Channel.find_by_slug(params[:id])
    end
  end
end
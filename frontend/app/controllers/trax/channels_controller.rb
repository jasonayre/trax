module Trax
  class ChannelsController < ::Trax::ApplicationController
    def index
      @collection ||= current_site.channels.decorate
    end

    def show
      # @resource ||= ::Trax::Channel.find_by_slug(params[:id]).decorate
    end

    def resource
      @resource ||= end_of_association_chain.find_by_slug(params[:id]).decorate
    end
  end
end
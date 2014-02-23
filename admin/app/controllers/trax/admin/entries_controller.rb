module Trax
  module Admin
    class EntriesController < ::Trax::Admin::ApplicationController
      respond_to :json

      def index
        respond_with(collection)
      end

      def show
        @resource ||= ::Trax::Entry.find(params[:id])

        respond_with(@resource)
      end
      
      private
      
      def channel
        ::Trax::Channel.by_id(params[:channel_id]).first
      end
      
      def channel?
        params.key?(:channel_id)
      end
      
      def begin_of_association_chain
        if channel?
          channel
        else
          super
        end
      end
    end
  end
end
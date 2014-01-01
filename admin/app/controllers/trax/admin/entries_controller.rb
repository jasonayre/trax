module Trax
  module Admin
    class EntriesController < ::Trax::Admin::ApplicationController
      respond_to :json
      def index
        @collection ||= current_site.entries
        
        respond_with(@collection)
      end
    
      def show
        @resource ||= ::Trax::Entry.find(params[:id])
        
        respond_with(@resource)
      end
    end
  end
end
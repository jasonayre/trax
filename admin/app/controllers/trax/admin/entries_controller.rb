module Trax
  module Admin
    class EntriesController < ::Trax::Admin::ApplicationController
      def index
        @collection ||= current_site.entries
      end
    
      def show
        @resource ||= ::Trax::Entry.find_by_slug(params[:id])
      end
    end
  end
end
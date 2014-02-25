module Trax
  module Admin
    class TagsController < ApplicationController
      respond_to :json

      def index
        render :json => tags, :each_serializer => ::Trax::Admin::TagSerializer
      end

      def create
        taggable_resource.send(taggable_context_method.to_sym).send(:add, tag_name)
        taggable_resource.save

        render :json => tag,
               :serializer => ::Trax::Admin::TagSerializer
      end

      def destroy
        @tagging = ::ActsAsTaggableOn::Tagging.find(params[:id])
        taggable_resource.send(taggable_context_method.to_sym).send(:remove, @tagging.tag.name)
        taggable_resource.save

        render :json => @tagging,
               :serializer => ::Trax::Admin::TagSerializer,
               :meta => [{:text => "Tag #{@tagging.name} removed", :severity => :info}],
               :meta_key => 'messages'
      end

      def tag_params
        params.require(:tag).permit(:channel_id, :taggable_context, :name)
      end

      def permitted_taggable_keys
        [:channel_id, :entry_id]
      end

      def taggable_context
        params.fetch(:tag){ params }.fetch(:taggable_context) { "tags" }
      end

      def taggable_id
        @taggable_id ||= params.fetch("#{parent_resource_name.singularize}_id".to_sym)
      end

      def taggable_context_method
        "#{taggable_context.singularize}_list".to_sym
      end

      def tag_name
        @tag_name ||= params.fetch(:tag).fetch(:name)
      end

      def tag
        @tag ||= taggable_resource.send(:taggings).detect { |resource_tagging|
          resource_tagging.tag.name == tag_name
        }
      end

      def tags
        @tags ||= taggable_resource.send(:taggings).select do |tagging|
          tagging.context == taggable_context
        end
      end

      def parent_resource_segment_index
        @parent_resource_segment_index ||= request_segments.find_index{ |name| name == "admin" } + 1
      end

      def parent_resource_name
        @parent_resource_name ||= request_segments[parent_resource_segment_index]
      end

      def resource_type
        @resource_type ||= "::Trax::#{parent_resource_name.singularize.classify}"
      end

      def resource_type_name
        resource_type.demodulize.underscore.downcase
      end

      def request_segments
        @request_segments ||= request.env["PATH_INFO"].dup.split("/").compact
      end

      def taggable_resource
        @taggable_resource ||= resource_type.constantize.find(taggable_id)
      end

      def resource
        @resource ||= taggable_resource.send(taggable_context.to_sym)
      end

      def response_message_successes
        [{:text => "#{severity_icon} Tag added", :severity => "success"}]
      end
    end
  end
end
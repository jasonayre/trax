require 'find'

module Trax
  module Core
    class Protos
      include ::Enumerable
      include ::ActiveModel::Serializers::JSON
      
      def self.each(&block)
        records.each do |record|
          yield record
        end
      end
      
      class << self
        attr_accessor :records, :tree_hash
      end
      
      def self.records
        return @records unless @records.nil?
        
        @records = []
        
        ::Find.find(path) do |file|
          next if ::File.extname(file) != ".proto"
          @records << new(file)
        end
        
        @records
      end
      
      def self.tree_hash
        return @tree_hash unless @tree_hash.nil?
        
        @tree_hash = Hash.new { |h, k| h[k] = Hash.new(&h.default_proc) }
        
        records.each do |record|
          record.class_hierarchy.inject(tree_hash) do |h,k|
            if k == record.name
              result = h[k] = record
            else
              result = h[k]
            end
            
            result
          end
        end
        
        tree_hash["trax"]
      end
      
      def self.to_json
        tree_hash.to_json
      end
      
      def self.path
        ::File.join(::File.absolute_path(::File.dirname(::Trax::Core::Engine.root)), 'definitions')
      end
      
      def self.js_path
        ::File.join(::File.absolute_path(::File.dirname(::Trax::Core::Engine.root)), 'js')        
      end
      
      def self.asset_path_prefix
        "/assets/trax/"
      end
      
      attr_accessor :asset_path, :file_path, :name, :parent_namespace, :class_hierarchy, :proto
      
      def initialize(file_path)
        @file_path = file_path
      end
      
      def asset_path
        @asset_path ||= "#{class_hierarchy.join('/')}.proto"
      end
      
      def file_base_path
        @file_base_path ||= ::File.join(::File.dirname(file_path), ::File.basename(file_path, ".proto"))
      end
      
      def class_hierarchy
        @class_hierarchy ||= relative_path.split("/")
      end
      
      def relative_path
        file_base_path.split("/definitions/").last
      end
      
      def name
        @name ||= ::File.basename(file_base_path.split('/').last, ".proto")
      end
      
      def parent_namespace
        @parent_namespace ||= relative_path.split("/").first
      end
      
      def proto
        @proto ||= ::File.open(file_path, 'rb').read
      end
      
      def attributes
        {
          'asset_path' => asset_path,
          'name' => name, 
          'class_hierarchy' => class_hierarchy,
          'parent_namespace' => parent_namespace,
          'file_base_path' => file_base_path,
          'file_path' => file_path,
          'proto' => proto
        }
      end
    end
  end
end
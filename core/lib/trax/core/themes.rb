module Trax
  module Core
    class Themes
      include Enumerable
      
      def self.each(&block)
        records.each do |record|
          if block_given?
            block.call record
          else
            yield record
          end
        end
      end
      
      class << self
        attr_accessor :records
      end
      
      def self.records
        @records ||= []
      end
      
      attr_accessor :path, :name, :
      
      def initialize(theme_path)
        @path = theme_path
        @name = theme_path.split("/").last
      end
      
      ::Dir[::Rails.root.join('vendor', 'themes', '**')].each do |theme_path|
        records << ::Trax::Core::Themes.new(theme_path)
      end
    end
  end
end
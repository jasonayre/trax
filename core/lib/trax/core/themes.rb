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
      
      def self.register(theme_name, &block)
        instance = new(:name => theme_name)
        instance.instance_eval(&block)
        record = ::Trax::Theme.where(:name => theme_name).first_or_create
        puts record.inspect
        update_theme(instance, record) if record.name != instance.name || record.github_url != instance.github_url
        update_theme_version(instance, record) if record.version != instance.version
        puts record.inspect
      end
      
      def self.update_theme(instance, record)
        record.update_attribute(:github_url, instance.github_url) if record.github_url != instance.github_url
        record.update_attribute(:name, instance.name) if record.name != instance.name
      end
      
      def self.update_theme_version(instance, record)
        record.version = instance.version
        record.save
      end
      
      attr_accessor :path, :name, :version, :github_url
      
      def initialize(*args)
        options = args.extract_options!
        options.each_pair {|k,v| send("#{k}=", v)}
      end
      
      def active(*args)
        return @active unless args
        @active ||= args.first
      end
      
      def github_url(*args)
        return @github_url unless args
        @github_url ||= args.first
      end
      
      def name(*args)
        return @name unless args
        @name ||= args.first
      end
      
      def version(*args)
        return @version unless args
        @version ||= args.first
      end
      
      ::Dir[::Rails.root.join('vendor', 'themes', '**')].each do |theme_path|
        load "#{theme_path}/config.rb"
      end
    end
  end
end
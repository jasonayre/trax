require "devise"

module Trax
  module Core
    def self.db_prepared?
      ::ActiveRecord::Base.connection.table_exists?("trax_channels") &&
      ::ActiveRecord::Base.connection.table_exists?("trax_entries") &&
      ::ActiveRecord::Base.connection.table_exists?("trax_sites") &&
      ::ActiveRecord::Base.connection.table_exists?("trax_themes")
    end
  end
end

require 'trax/core/engine'
require 'ancestry'



::Ancestry::InstanceMethods.class_eval do
  remove_method :cast_primary_key
  puts self.respond_to?(:cast_primary_key)
  private
  
  def cast_primary_key(key)
    puts "CASTING PRIMARY KEY"
    if primary_key_type == :string
      key
    else
      key.to_i
    end
  end
end


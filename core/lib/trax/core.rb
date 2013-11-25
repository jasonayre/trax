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

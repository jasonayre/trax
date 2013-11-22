module Trax
  BASE_PATH = ::File.expand_path('..', ::File.dirname(__FILE__))
  BASE_LIB_PATH = ::File.join(BASE_PATH, 'lib')
  DEFINITIONS_PATH = ::File.join(BASE_PATH, 'definitions')
  PACKAGE_NAMESPACE = 'trax'
  
  def self.proto_file_paths
    ::Dir.glob(::File.join(::Trax::BASE_LIB_PATH, ::Trax::PACKAGE_NAMESPACE, '**', '*.pb.rb'))
  end
  
  proto_file_paths.each { |path| require path }
  
  # def self.thrift_file_paths
  #   ::Dir.glob(::File.join(::Trax::BASE_LIB_PATH, ::Trax::PACKAGE_NAMESPACE, 'thrift', '**', '*.rb'))
  # end
  # 
  # thrift_file_paths.each { |path| require path }
end

require 'trax_core'
require 'trax_backend'
require 'trax_frontend'
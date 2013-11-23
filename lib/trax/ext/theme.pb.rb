##
# This file is auto-generated. DO NOT EDIT!
#
require 'protobuf/message'


##
# Imports
#
require 'trax/common.pb'

module Trax
  module Ext

    ##
    # Message Classes
    #
    class Theme < ::Protobuf::Message; end


    ##
    # Message Fields
    #
    class Theme
      optional ::Protobuf::Field::StringField, :name, 1
      optional ::Trax::Version, :version, 2
      optional ::Protobuf::Field::StringField, :path, 3
    end

  end

end


##
# This file is auto-generated. DO NOT EDIT!
#
require 'protobuf/message'


##
# Imports
#
require 'trax/common.pb'

module Trax
  module Core

    ##
    # Message Classes
    #
    class Theme < ::Protobuf::Message; end


    ##
    # Message Fields
    #
    class Theme
      optional ::Protobuf::Field::BytesField, :id, 1
      optional ::Protobuf::Field::StringField, :name, 2
      optional ::Protobuf::Field::StringField, :version, 3
    end

  end

end


##
# This file is auto-generated. DO NOT EDIT!
#
require 'protobuf/message'


##
# Imports
#
require 'trax/common.pb'

module Trax
  module Admin

    ##
    # Message Classes
    #
    class MenuItemForm < ::Protobuf::Message; end
    class MenuItemPermittedParams < ::Protobuf::Message; end


    ##
    # Message Fields
    #
    class MenuItemPermittedParams
      optional ::Protobuf::Field::StringField, :label, 1
      optional ::Protobuf::Field::StringField, :name, 2
      optional ::Protobuf::Field::StringField, :template, 3
      optional ::Protobuf::Field::StringField, :path, 4
      optional ::Protobuf::Field::StringField, :resource_type, 5
      optional ::Protobuf::Field::BytesField, :resource_id, 6
      optional ::Protobuf::Field::BytesField, :parent_id, 7
      optional ::Protobuf::Field::Int32Field, :lft, 8
      optional ::Protobuf::Field::Int32Field, :rgt, 9
      optional ::Protobuf::Field::Int32Field, :depth, 10
    end

  end

end


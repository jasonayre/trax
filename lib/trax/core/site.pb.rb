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
    class Site < ::Protobuf::Message; end


    ##
    # Message Fields
    #
    class Site
      optional ::Protobuf::Field::BytesField, :id, 1
      optional ::Protobuf::Field::StringField, :details, 2
      optional ::Protobuf::Field::StringField, :description, 3
      optional ::Protobuf::Field::StringField, :host, 4
      optional ::Protobuf::Field::BoolField, :is_default, 5
      optional ::Protobuf::Field::BytesField, :theme_id, 6
      optional ::Trax::RoutingStrategy, :routing_strategy, 7
      optional ::Trax::Status, :status, 8
    end

  end

end


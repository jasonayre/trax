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
    class Channel < ::Protobuf::Message; end


    ##
    # Message Fields
    #
    class Channel
      optional ::Protobuf::Field::BytesField, :id, 1
      optional ::Protobuf::Field::StringField, :name, 2
      optional ::Protobuf::Field::StringField, :slug, 3
      optional ::Protobuf::Field::StringField, :details, 4
      optional ::Protobuf::Field::StringField, :description, 5
      optional ::Protobuf::Field::StringField, :short_description, 6
      optional ::Protobuf::Field::BytesField, :parent_id, 7
      optional ::Trax::RoutingStrategy, :routing_strategy, 8
      optional ::Trax::Status, :status, 9
    end

  end

end


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
    class EntryPermittedParams < ::Protobuf::Message; end


    ##
    # Message Fields
    #
    class EntryPermittedParams
      optional ::Protobuf::Field::StringField, :title, 1
      optional ::Protobuf::Field::StringField, :body, 2
      optional ::Protobuf::Field::BoolField, :active, 3
      optional ::Protobuf::Field::StringField, :slug, 4
      optional ::Protobuf::Field::BytesField, :channel_id, 5
      optional ::Protobuf::Field::BytesField, :parent_id, 6
      optional ::Protobuf::Field::StringField, :status, 7
      # Extension Fields
      extensions 200...536870912
    end

  end

end


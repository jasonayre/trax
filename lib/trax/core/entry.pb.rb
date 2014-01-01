##
# This file is auto-generated. DO NOT EDIT!
#
require 'protobuf/message'

module Trax
  module Core

    ##
    # Message Classes
    #
    class Entry < ::Protobuf::Message; end
    class EntryPermittedParams < ::Protobuf::Message; end


    ##
    # Message Fields
    #
    class Entry
      optional ::Protobuf::Field::BytesField, :id, 1
      optional ::Protobuf::Field::StringField, :title, 2
      optional ::Protobuf::Field::StringField, :body, 3
      optional ::Protobuf::Field::StringField, :preview, 4
      optional ::Protobuf::Field::StringField, :slug, 5
      optional ::Protobuf::Field::BytesField, :user_id, 6
      optional ::Protobuf::Field::BytesField, :parent_id, 7
      optional ::Protobuf::Field::BoolField, :active, 8
    end

    class EntryPermittedParams
      optional ::Protobuf::Field::BytesField, :id, 1
      optional ::Protobuf::Field::StringField, :title, 2
      optional ::Protobuf::Field::StringField, :body, 3
      optional ::Protobuf::Field::StringField, :preview, 4
      optional ::Protobuf::Field::StringField, :slug, 5
      optional ::Protobuf::Field::BytesField, :user_id, 6
      optional ::Protobuf::Field::BytesField, :parent_id, 7
      optional ::Protobuf::Field::BoolField, :active, 8
      # Extension Fields
      extensions 200...536870912
    end

  end

end


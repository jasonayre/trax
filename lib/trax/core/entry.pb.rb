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


    ##
    # Message Fields
    #
    class Entry
      optional ::Protobuf::Field::BytesField, :id, 1
      optional ::Protobuf::Field::StringField, :title, 2
      optional ::Protobuf::Field::StringField, :body, 3
      optional ::Protobuf::Field::StringField, :slug, 4
      optional ::Protobuf::Field::BytesField, :user_id, 5
    end

  end

end


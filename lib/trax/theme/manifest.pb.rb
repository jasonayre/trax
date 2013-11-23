##
# This file is auto-generated. DO NOT EDIT!
#
require 'protobuf/message'

module Trax
  module Theme

    ##
    # Message Classes
    #
    class Manifest < ::Protobuf::Message; end


    ##
    # Message Fields
    #
    class Manifest
      optional ::Protobuf::Field::StringField, :name, 1
      optional ::Protobuf::Field::StringField, :version, 2
      optional ::Protobuf::Field::StringField, :github_url, 3
    end

  end

end


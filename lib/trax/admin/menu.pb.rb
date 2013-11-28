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
    class MenuForm < ::Protobuf::Message; end
    class MenuPermittedParams < ::Protobuf::Message; end


    ##
    # Message Fields
    #
    class MenuPermittedParams
      optional ::Protobuf::Field::StringField, :name, 1
      optional ::Protobuf::Field::StringField, :template, 2
    end

  end

end


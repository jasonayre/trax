##
# This file is auto-generated. DO NOT EDIT!
#
require 'protobuf/message'


##
# Imports
#
require 'trax/common.pb'

module Trax
  module Backend

    ##
    # Message Classes
    #
    class ThemePermittedParams < ::Protobuf::Message; end


    ##
    # Message Fields
    #
    class ThemePermittedParams
      optional ::Protobuf::Field::StringField, :name, 1
      optional ::Protobuf::Field::StringField, :version, 2
      # Extension Fields
      extensions 200...536870912
    end

  end

end


##
# This file is auto-generated. DO NOT EDIT!
#
require 'protobuf/message'


##
# Imports
#
require 'trax/common.pb'

module Trax
  module Theme

    ##
    # Message Classes
    #
    class Migration < ::Protobuf::Message; end


    ##
    # Message Fields
    #
    class Migration
      optional ::Trax::Version, :start_version, 1
      optional ::Trax::Version, :end_version, 2
    end

  end

end


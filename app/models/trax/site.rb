module Trax
  class Site < ActiveRecord::Base
    has_many :entries
    has_many :channels
  end
end

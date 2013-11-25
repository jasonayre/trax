module Trax
  class MenuItem < ActiveRecord::Base
    acts_as_nested_set
    
    belongs_to :menu

  end
end

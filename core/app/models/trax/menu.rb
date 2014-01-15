module Trax
  class Menu < ActiveRecord::Base
    belongs_to :site
    has_many :menu_items
    accepts_nested_attributes_for :menu_items
  end
end

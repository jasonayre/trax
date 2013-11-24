module Trax
  class Menu < ActiveRecord::Base
    belongs_to :site
    has_many :tree_nodes
    has_many :menu_items
  end
end

module Trax
  class TreeNode < ActiveRecord::Base
    has_ancestry
    belongs_to :menu
  end
end

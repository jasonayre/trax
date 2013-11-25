require 'spec_helper'

module Trax
  describe TreeNode do
    subject { ::FactoryGirl.create(:tree_node) }
    it { should belong_to :menu }
  end
end

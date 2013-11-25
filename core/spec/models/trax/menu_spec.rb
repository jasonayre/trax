require 'spec_helper'

module Trax
  describe Menu do
    subject { ::FactoryGirl.create(:menu_with_children) }
    
    it { should belong_to(:site) }
    it { should have_many(:tree_nodes) }
    it { should have_many(:menu_items) }
  end
end

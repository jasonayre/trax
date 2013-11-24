require 'spec_helper'

module Trax
  describe Menu do
    subject { ::FactoryGirl.create(:menu_with_children) }
    
    it { should belong_to(:site) }
    it { should have_many(:tree_nodes) }
    it { should have_many(:menu_items) }
    it "blah" do
      binding.pry
    end
    # it { subject.tree_nodes.first.has_children?.should be true }
    # its("tree_nodes.first") { has_children?.should be true }
    # 
    # it "should do something" do
    #   puts subject.inspect
    # end
  end
end

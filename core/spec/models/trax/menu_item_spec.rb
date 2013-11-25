require 'spec_helper'

module Trax
  describe MenuItem do
    subject! { FactoryGirl.create(:menu_item_tree) }
    
    it { should belong_to :menu }
    
    context "hierarchy" do
      its(:level) { should == 0 }
      context "its children" do
        its("children.first.level") { should == 1 }
        context "childrens children" do
          its("children.first.children.first.level") { should == 2 }
        end
      end
    end
  end
end

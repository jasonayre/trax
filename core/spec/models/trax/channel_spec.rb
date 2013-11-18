require 'spec_helper'

module Trax
  describe Channel do
    subject { FactoryGirl.create(:channel)}
    
    it { should validate_presence_of(:site_id) }
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:slug).scoped_to(:site_id) }
    it { should have_many(:entries) }
    it { should belong_to(:site) }
    
    describe "children?" do
      context "without children" do
        it { subject.children?.should eq false}
      end
      
      context "with children" do
        let(:channel_with_children) { FactoryGirl.create(:child_channel) }
      end
    end
      
  end
end

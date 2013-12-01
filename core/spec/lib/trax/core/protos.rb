require 'spec_helper'

describe ::Trax::Core::Protos do
  let(:full_path) { "/Users/jayre/gems/trax/definitions/trax/core/theme.proto" }
  subject { described_class.new(full_path) }
  
  describe ".path" do
    puts described_class.path
    it "last segment should be trax" do
      described_class.path.split("/").last.should == "trax"
    end
  end
  
  describe ".records" do
    it{ described_class.records.should be_instance_of(Array) }
  end
  
  describe ".each" do
    it "should return array of instances" do
      described_class.stub(:records).and_return([subject])
      described_class.each do |record|
        record.should == subject
      end
    end
  end
  
  its(:asset_path) { should eq "/assets/core/theme.proto" }
  its(:class_hierarchy) { should eq ["core", "theme"] }
  its(:file_base_path) { should eq "/Users/jayre/gems/trax/definitions/trax/core/theme" }
  its(:name) { should eq "theme" }
  its(:relative_path) { should eq "core/theme" }
  its(:parent_namespace) { should eq "core"}
end

require 'spec_helper'

describe ::Trax::Core::Themes do
  
  subject do
    described_class.register "test_theme" do
      name "test_theme"
      version "0.0.1"
      github_url "jasonayre/test_theme"
    end
  end
  
  let(:theme_model) { ::Trax::Theme.where(:name => "test_theme").first }
  
  describe ".records" do
    it{ described_class.records.should be_instance_of(Array) }
  end
  
  describe ".register" do
    it{ described_class.records.should include subject }
  end
  
  describe ".update_theme" do
    it "updates silently unless version changed" do
      theme_model.name = "blah"
      theme_model.github_url = "asdasdasd"
      theme_model.should_receive(:update_attribute).at_least(2).times
      described_class.update_theme(subject, theme_model)
    end
  end
  
  describe ".update_theme_version" do
    it "triggers callback save if version changed" do
      subject.version = "0.0.9"
      theme_model.should_receive(:save)
      described_class.update_theme_version(subject, theme_model)
    end
  end
end

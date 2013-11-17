require 'spec_helper'

module Trax
  describe Channel do
    it { should validate_presence_of(:site_id) }
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:slug).scoped_to(:site_id) }
    it { should have_many(:entries) }
    it { should belong_to(:site) }
  end
end

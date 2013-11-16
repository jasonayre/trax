require 'spec_helper'

module Trax
  describe Entry do
    it { should belong_to(:user) }
    it { should belong_to(:channel) }
    it { should belong_to(:site) }
    it { should have_many(:children) }
    it { should validate_uniqueness_of(:slug).scoped_to(:site_id, :channel_id, :parent_id) }
  end
end

require 'spec_helper'

module Trax
  describe Post do
    it { should belong_to(:channel) }
    it { should belong_to(:user) }
    it { should belong_to(:site) }
    it { should validate_uniqueness_of(:permalink).scoped_to(:site_id, :channel_id) }
  end
end

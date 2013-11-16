require 'spec_helper'

module Trax
  describe User do
    it { should have_many(:entries) }
  end
end

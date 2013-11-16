require 'spec_helper'

module Trax
  describe Site do
    it { should have_many(:channels) }
    it { should have_many(:entries) }
  end
end

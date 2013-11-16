require 'spec_helper'

module Trax
  describe Theme do
    it { should belong_to(:site) }
  end
end

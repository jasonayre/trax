require 'spec_helper'

module Trax
  describe Site do
    it { should have_many(:channels) }
    it { should have_many(:entries) }
    it { should have_many(:menus) }
    it { should have_many(:menu_items).through(:menus) }
  end
end

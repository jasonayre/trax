module Trax
  class Theme < ActiveRecord::Base
    belongs_to :site
  end
end

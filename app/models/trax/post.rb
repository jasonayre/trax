module Trax
  class Post < ActiveRecord::Base
    belongs_to :channel
    belongs_to :site
  end
end

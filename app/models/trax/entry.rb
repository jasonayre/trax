module Trax
  class Entry < ActiveRecord::Base
    belongs_to :channel
    belongs_to :user
    belongs_to :parent, :class_name => "::Trax::Entry"
    belongs_to :site
    
    has_many :children, :class_name => "::Trax::Entry", :foreign_key => :id
    
    validates :slug, :uniqueness => {:scope => [:site_id, :channel_id, :parent_id] }
    
    before_save do
      self[:slug] = self[:name].paramaterize if self[:slug].blank?
    end
  end
end

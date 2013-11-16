module Trax
  class Channel < ActiveRecord::Base
    validates :name, :presence => true
    validates :slug, :presence => true, :uniqueness => { :scope => :site_id }
    validates_presence_of :site_id
    has_many :entries
    
    before_save do
      self[:slug] = self[:name].paramaterize if self[:slug].blank?
    end
  end
end

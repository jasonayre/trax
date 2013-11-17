module Trax
  class Channel < ActiveRecord::Base
    ROUTING_STRATEGIES = ["restful", "nested", "permalink"].freeze
    validates_presence_of :site_id
    # validates :name, :presence => true

    validates :slug, :presence => true, :uniqueness => { :scope => :site_id }
    
    has_many :entries
    
    before_create do
      self[:slug] = self[:name].parameterize if self[:slug].blank?
      puts self[:slug]
      self[:routing_strategy] = ROUTING_STRATEGIES.first if self[:routing_strategy].blank?
      self[:active] = false if self[:active].blank?
    end
  end
end

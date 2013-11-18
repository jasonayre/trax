module Trax
  class Channel < ActiveRecord::Base
    ROUTING_STRATEGIES = ::Trax::RoutingStrategy.values.keys
    
    validates_presence_of :site_id, :name

    validates :slug, :presence => true, :uniqueness => { :scope => :site_id }
    
    belongs_to :site
    belongs_to :parent, :class_name => "::Trax::Channel"
    
    has_many :entries
    has_many :children, :class_name => "::Trax::Channel", :foreign_key => :parent_id

    after_initialize do
      self[:routing_strategy] = ROUTING_STRATEGIES.first if self[:routing_strategy].blank?
      self[:active] = false if self[:active].blank?
    end
    
    before_validation do
      self[:slug] = self[:name].try(:parameterize) if self[:slug].blank?
    end
    
    def children?
      children.any?
    end
    
  end
end

module Trax
  class Channel < ActiveRecord::Base
    ROUTING_STRATEGIES = ::Trax::RoutingStrategy.values.keys
    
    acts_as_taggable_on :tags
    
    validates_presence_of :site_id, :name

    validates :slug, :presence => true, :uniqueness => { :scope => :site_id }
    
    belongs_to :site
    belongs_to :parent, :class_name => "::Trax::Channel"
    
    has_many :entries
    has_many :children, :class_name => "::Trax::Channel", :foreign_key => :parent_id
    
    # Scopes
    
    def self.find_by_slug(slug)
      where(:slug => slug).limit(1).try(:first)
    end

    scope :by_slug, lambda{ |*slugs| where(:slug => slugs) }
    scope :by_routing_strategy, lambda{ |*routing_strategies| where(:routing_strategy => routing_strategies.flatten.compact.uniq) }
    scope :by_static_route, lambda{ by_routing_strategy(::Trax::RoutingStrategy.fetch(:STATIC).try(:name)) }
    scope :by_restful_route, lambda{ by_routing_strategy(::Trax::RoutingStrategy.fetch(:RESTFUL).try(:name)) }

    ## Callbacks
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

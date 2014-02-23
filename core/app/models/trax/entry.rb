module Trax
  class Entry < ActiveRecord::Base
    acts_as_taggable_on :tags
    
    belongs_to :channel
    belongs_to :user
    belongs_to :parent, :class_name => "::Trax::Entry"
    has_one :site, :through => :channel
    
    has_many :children, :class_name => "::Trax::Entry", :foreign_key => :parent_id
    
    validates :slug, :uniqueness => {:scope => [:channel_id, :parent_id] }
    validates :channel_id, :presence => true
    
    # Scopes
    def self.find_by_slug(slug)
      where(:slug => slug).limit(1).try(:first)
    end

    scope :by_slug, lambda{ |*slugs| where(:slug => slugs.flatten.compact.uniq) }
    scope :by_routing_strategy, lambda{ |*routing_strategies| where(:routing_strategy => routing_strategies) }
    scope :by_static_route, lambda{ by_routing_strategy(::Trax::RoutingStrategy.fetch(:STATIC).try(:name)) }
    scope :by_restful_route, lambda{ by_routing_strategy(::Trax::RoutingStrategy.fetch(:RESTFUL).try(:name)) }
    scope :by_channel_id, lambda { |*channel_ids| where(:channel_id => channel_ids.flatten.compact.uniq) }
    
    # Callbacks
    before_save do
      self[:slug] = self[:title].parameterize if self[:slug].blank?
    end
    
    def parent?
      children.any?
    end
  end
end

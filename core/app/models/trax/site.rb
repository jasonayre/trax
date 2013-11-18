module Trax
  class Site < ActiveRecord::Base
    ROUTING_STRATEGIES = ::Trax::RoutingStrategy.values.keys
    
    has_many :entries
    has_many :channels
    accepts_nested_attributes_for :channels
    
    scope :by_host, lambda{|*hosts| where(:host => hosts.flatten.compact.uniq) }
    
    scope :by_current_host, lambda{ |*hosts|
      current_host = by_host(*hosts).first
      current_host ||= by_default_host
      current_host
    }
    
    scope :by_default_host, lambda{ where(:is_default => true).first }
    
    after_initialize do
      self[:routing_strategy] = ROUTING_STRATEGIES.first if self[:routing_strategy].blank?
      self[:active] = false if self[:active].blank?
    end
  end
end

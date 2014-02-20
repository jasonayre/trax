module Trax
  class Site < ActiveRecord::Base
    ROUTING_STRATEGIES = ::Trax::RoutingStrategy.values.keys

    has_many :entries
    has_many :channels, :class_name => "::Trax::Channel"
    has_many :menus, :class_name => "::Trax::Menu"
    has_many :menu_items, :through => :menus

    accepts_nested_attributes_for :channels
    accepts_nested_attributes_for :menus

    belongs_to :theme

    scope :by_host, lambda{|*hosts| where(:host => hosts.flatten.compact.uniq) }

    scope :by_current_host, lambda{ |*hosts|
      current_host = by_host(hosts).first
      current_host ||= by_default_host
      current_host
    }

    scope :by_default_host, lambda{ where(:is_default => true).first }

    scope :by_active, lambda { where(:active => true) }
    scope :by_inactive, lambda { where(:active => false) }

    after_initialize do
      self[:routing_strategy] = ROUTING_STRATEGIES.first if self[:routing_strategy].blank?
      self[:active] = false if self[:active].blank?
    end
  end
end

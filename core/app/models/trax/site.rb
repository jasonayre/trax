module Trax
  class Site < ActiveRecord::Base
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
  end
end

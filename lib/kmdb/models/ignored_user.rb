require 'kmdb'
require 'kmdb/concerns/table_regexp'
require 'active_record'

module KMDB
  class IgnoredUser < ActiveRecord::Base
    extend TableRegexp

    def self.include?(name)
      !! (regexp == :empty ? false : regexp.match(name))
    end
  end
end

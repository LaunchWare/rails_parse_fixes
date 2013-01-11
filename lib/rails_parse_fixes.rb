require "rails_parse_fixes/version"
require 'active_support/core_ext/hash/conversions'
require 'action_controller'

module RailsParseFixes
  class << self
    def apply
      ActiveSupport::CoreExtensions::Hash::Conversions::XML_PARSING.delete('symbol')
      ActiveSupport::CoreExtensions::Hash::Conversions::XML_PARSING.delete('yaml')
      ActionController::Base.param_parsers.delete(Mime::XML)
      @@loaded = true
    end

    def loaded?
      @@loaded
    end
  end
end

RailsParseFixes.apply


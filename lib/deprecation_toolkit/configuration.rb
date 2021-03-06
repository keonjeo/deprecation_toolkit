# frozen_string_literal: true

require "active_support/configurable"

module DeprecationToolkit
  class Configuration
    include ActiveSupport::Configurable

    config_accessor(:behavior) { Behaviors::Raise }
    config_accessor(:allowed_deprecations) { [] }
    config_accessor(:deprecation_path) { "test/deprecations" }
    config_accessor(:attach_to) { [:rails] }
    config_accessor(:warnings_treated_as_deprecation) { [] }
  end
end

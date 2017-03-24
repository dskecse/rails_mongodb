require_relative 'boot'

require 'rails'
require 'active_model/railtie'
require 'action_controller/railtie'
require 'action_view/railtie'
require 'sprockets/railtie'

Bundler.require(*Rails.groups)

module RailsMongodb
  class Application < Rails::Application
    config.generators do |g|
      g.template_engine :slim
      g.assets = false
      g.helper = false
      g.view_specs = false
    end
  end
end

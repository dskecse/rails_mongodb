require_relative 'boot'

require 'rails'
require 'active_model/railtie'
require 'action_controller/railtie'
require 'action_view/railtie'
require 'sprockets/railtie'

Bundler.require(*Rails.groups)

module RailsMongodb
  class Application < Rails::Application
    config.app_generators.scaffold_controller :responders_controller

    config.generators do |g|
      g.test_framework :rspec, views: false, routing_specs: false, fixture: true
      g.fixture_replacement :factory_girl, dir: 'spec/factories'
      g.template_engine :slim
      g.assets = false
      g.helper = false
      g.view_specs = false
    end
  end
end

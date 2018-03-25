require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"

require "carrierwave"

Bundler.require(*Rails.groups)

module Resume
  class Application < Rails::Application
    config.load_defaults 5.1

    config.generators do |generator|
      #generator.assets false
      generator.stylesheets false
      generator.javascripts false

      generator.template_engine :erb # Default
      generator.orm :active_record # Default
    end
    config.generators.system_tests = nil
    #config.action_controller.permit_all_parameters = true
  end
end

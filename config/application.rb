require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TestApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    # REMOVE OR COMMENT THIS OUT (NOT SUPPORTED IN RAILS 4.2)
    # config.load_defaults 8.0

    # Enable asset pipeline (required for Rails 4.2)
    config.assets.enabled = true

    require 'will_paginate'
    require 'will_paginate/active_record'


    require "sprockets/railtie"


    # Serve static files in production (required for Rails 4.2)
    config.serve_static_files = true

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end


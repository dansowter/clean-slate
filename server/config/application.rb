require File.expand_path('../boot', __FILE__)
require "active_record/railtie"
require "action_controller/railtie"

Bundler.require(:default, Rails.env)

module Server
  class Application < Rails::Application
    I18n.enforce_available_locales = false

    config.autoload_paths += %W(#{config.root}/lib)
    config.assets.enabled = false

    config.middleware.use Rack::Cors do
      allow do
        origins '*'
        resource '*', :headers => :any, :methods => [:get, :post, :options, :delete]
      end
    end
  end
end

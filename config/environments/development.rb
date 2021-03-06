GreenMercury::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  config.action_mailer.default_url_options = { :host => 'localhost:3000' }

  MEETUP_API_KEY = ENV['MEETUP_API_KEY']
  MEETUP_API_SECRET = ENV['MEETUP_API_SECRET']

  CAPTURE_OWNER_CLIENT_ID = 'uxufbdmf4n9htrm6z7t8kmgwy3r5faa5'
  CAPTURE_OWNER_CLIENT_SECRET = ENV['CAPTURE_OWNER_CLIENT_SECRET']
  CAPTURE_APP_ID = 'dtdggxejjsvuhvfeqy59gn5dr2'
  RPX_URL = 'https://codescouts-dev.rpxnow.com'
  CAPTURE_URL = 'https://codescouts-dev.janraincapture.com'
  FLOW_VERSION = '89942617-20c8-479f-a253-502f5b0f5bce'
  PAPERCLIP_OPTIONS={}

  config.cache_store = :null_store
end

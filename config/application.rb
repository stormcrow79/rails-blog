require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Blog
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    config.hosts << "blog.almostpurple.com"
    config.hosts << "*.blog.almostpurple.com"

    config.action_dispatch.tld_lenth = 3;
  end
end

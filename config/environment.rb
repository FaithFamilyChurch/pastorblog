# Load the Rails application.
require_relative 'application'

ENV['RAILS_RELATIVE_URL_ROOT']  = "/blog"
ENV['ROOT_URL']  = "/blog"

# Initialize the Rails application.
Rails.application.initialize!

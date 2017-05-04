require "rails_pages/version"
require "rails"
module RailsPages
  @@configured = false

  def self.configured? #:nodoc:
    @@configured
  end

  # You can use setup method to config your app.
  def self.setup
    @@configured = true
    yield self
  end
end

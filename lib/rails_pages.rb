require 'rails_pages/engine'

module RailsPages
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  class Configuration
    attr_accessor :option
    attr_accessor :pages

    def initialize
      @option = 'default_option'
      @pages = []
    end
  end
end
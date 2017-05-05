require 'rails/generators/base'

module RailsPages
  module Generators
    class Base < Rails::Generators::Base #:nodoc:
      def self.source_root
        @_rails_pages_source_root ||= File.expand_path(File.join(File.dirname(__FILE__), 'rails_pages', generator_name, 'templates'))
      end

      def self.banner
        "rails generate rails_pages:#{generator_name} #{self.arguments.map{ |a| a.usage }.join(' ')} [options]"
      end
    end
  end
end

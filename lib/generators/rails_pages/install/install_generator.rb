require "rails/generators/base"

module RailsPages
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)
      desc "Creates Jem initializer for your application"

      ## arguments list:
      argument :config_name, :type => :string, :default => "rails_pages"
      argument :pages, :type => :array, :default => []

      # copy initialize:
      def copy_initializer
        # template 'config/initializers/rails_pages.rb', "config/initializers/#{config_name}.rb"
      end

      # copy generated view files:
      def copy_views
        RailsPages.configuration = pages
        p RailsPages.configuration
        # pages.each do |page|
        #   template 'app/views/pages/template.erb', "app/views/rails_pages/pages/#{page}.erb"
        # end
      end

      # generate routes:
      def create_routes
        puts "Install complete! Truly Outrageous!"
      end
    end
  end
end

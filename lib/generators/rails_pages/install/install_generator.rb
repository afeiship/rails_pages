require 'rails/generators/base'

module RailsPages
  module Generators

    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)
      def install
        # namespace = ask_for('Where do you want to mount rails_admin?', 'admin', _namespace)
        # route("mount RailsAdmin::Engine => '/#{namespace}', as: 'rails_admin'")
        template 'config/initializers/rails_pages.rb', 'config/initializers/rails_pages.rb'
      end
    end



  end
end

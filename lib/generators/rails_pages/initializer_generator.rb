module RailsPages
  class InitializerGenerator < Rails::Generators::Base
    source_root File.expand_path("templates", __dir__)
    desc "Initialize necessary files to use RailsPages"

    def create_initializer
      copy_file "initializer/config.rb", "config/initializers/rails_pages.rb"
    end
  end
end

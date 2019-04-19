module RailsPages
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("templates", __dir__)
    desc "Configure necessary files to use RailsPages"

    def create_pages
      RailsPages.configuration.pages.each do |page|
        copy_file "page.html.erb", "app/views/rails_pages/pages/#{page}.html.rb"
      end
    end
  end
end

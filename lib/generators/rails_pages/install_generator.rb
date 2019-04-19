module RailsPages
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("templates", __dir__)
    desc "Configure necessary files to use RailsPages"

    def create_pages
      copy_file "views/application.html.erb", "app/views/layouts/rails_pages/application.html.erb"
      RailsPages.configuration.pages.each do |page|
        copy_file "views/page.html.erb", "app/views/rails_pages/pages/#{page}.html.erb"
      end
    end
  end
end

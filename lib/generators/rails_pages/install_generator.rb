module RailsPages
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("templates", __dir__)
    class_option :full, :type => :boolean
    desc "Configure necessary files to use RailsPages"

    def create_pages
      copy_file "views/application.html.erb", "app/views/layouts/rails_pages/application.html.erb"

      unless RailsPages.configuration.nil?
        RailsPages.configuration.pages.each do |page|
          copy_file "views/page.html.erb", "app/views/rails_pages/pages/#{page}.html.erb"
        end
      end
    end

    def create_routes
      unless options[:full]
        route 'mount RailsPages::Engine => "/rails_pages"'
      end
    end
  end
end

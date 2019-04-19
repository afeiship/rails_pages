module RailsPages
  class PageGenerator < Rails::Generators::NamedBase
    source_root File.expand_path("templates", __dir__)
    # class_option :name, :type => :string
    desc "Create single page to use RailsPages"

    def create_page
      copy_file "views/page.html.erb", "app/views/rails_pages/pages/#{file_name}.html.erb"
      puts "Add #{file_name} to: config/initializer/rails_pages.rb"
    end
  end
end

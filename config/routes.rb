module RailsPages
  Rails.application.routes.draw do
    RailsPages.configuration.pages.each do |page|
      mount_at = RailsPages::Engine.routes.find_script_name({}).slice(1, 100)

      get "#{mount_at}/#{page}", to: "rails_pages/pages##{page}"
    end
  end
end

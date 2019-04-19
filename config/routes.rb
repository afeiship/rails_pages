module RailsPages
  Rails.application.routes.draw do
    RailsPages.configuration.pages.each do |page|
      get "rails_pages/#{page}", to: "rails_pages/pages##{page}"
    end
  end
end

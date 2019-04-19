require_dependency "rails_pages/application_controller"

module RailsPages
  class PagesController < ApplicationController
    RailsPages.configuration.pages.each do |page|
      define_method(page) do
      end
    end
  end
end

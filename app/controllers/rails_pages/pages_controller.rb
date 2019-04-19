require_dependency "rails_pages/application_controller"

module RailsPages
  class PagesController < ApplicationController
    RailsPages.configuration.pages.each do |page|
      define_method(page) do
        @page_name = page
      end
    end
  end
end

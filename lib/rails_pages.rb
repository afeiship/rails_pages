require "rails_pages/version"

module RailsPages
  class PagesController < ApplicationController
      pages = %w[ page1 page2 page3 ]
      pages.each do |page|
          define_method(page) do
              #do nothing
          end
      end
  end
end

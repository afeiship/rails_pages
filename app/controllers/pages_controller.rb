class PagesController < ApplicationController
  RailsPages.configuration.pages.each do |page|
    define_method(page) do
      #do nothing
    end
  end
end

require 'rails'


module RailsPages
  class PagesController < ActionController::Base

    RailsPages.configuration.pages.each do |page|
      define_method(page) do
        #do nothing
      end
    end

  end
end
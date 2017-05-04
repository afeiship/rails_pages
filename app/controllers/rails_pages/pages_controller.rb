require 'rails'

module RailsPages
    class PagesController < ActionController::Base
        RailsPages.pages.each do |page|
            define_method(page) do
                #do nothing
            end
        end
    end
end
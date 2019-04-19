require 'test_helper'

module RailsPages
  class PagesControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get page1" do
      get pages_page1_url
      assert_response :success
    end

  end
end

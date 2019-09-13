# frozen_string_literal: true

require "test_helper"

class SitesControllerTest < ActionDispatch::IntegrationTest
  test "visiting the homepage" do
    assert_routing "/", controller: "sites", action: "show"
  end
end

# frozen_string_literal: true

require "test_helper"

class SitesControllerTest < ActionDispatch::IntegrationTest
  test "visiting the homepage" do
    assert_routing "/", controller: 'sites', action: 'show'
  end

  test "presence H1" do
    get root_path
    assert_select 'h1'
  end
end

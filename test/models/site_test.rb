# frozen_string_literal: true

require "test_helper"
class SiteTest < ActionController::TestCase
  test "should route to homepage" do
    assert_routing "/", { controller: "sites", action: "show" }, {}, {}, "troubles loading the homepage"
  end
end

# frozen_string_literal: true

require "test_helper"
class SiteTest < ActionController::TestCase
  test "should route to homepage" do
    assert_routing "/", { controller: "sites", action: "show" }, {}, {}, "troubles loading the homepage"
  end

  test "testing contact creation" do
    assert_routing "/contacts/new", { controller: "contacts", action: "new" }, {}, {}, "trouble creating contact"
  end

  test "testing route to create a new company" do
    assert_routing "/companies/new", { controller: "companies", action: "new" }, {}, {}, "trouble creating company"
  end

  # ["impro-a-marseille", "theatre-a-marseille", "lundi-a-marseille", "cours-de-theatre-mardi",
  #  "cours-de-theatre-mercredi", "cours-a-marseille-jeudi", "vendredi-a-marseille", "weekend-a-marseille"].each do |slug|
  #   test "testing crosspages loading for slug #{slug}" do
  #     assert_routing "/#{slug}", { controller: "cross_pages", action: "show" }, {}, {}, "There is a
  #     trouble on the following crosspage #{slug}"
  #   end
  # end

  test "testing crosspages loading for slug mardi" do
    assert_routing "/cours-de-theatre-mardi", { controller: "cross_pages", action: "show", slug: "cours-de-theatre-mardi" }, {}, {},
                   "There is a trouble on the following crosspage mardi"
  end
end

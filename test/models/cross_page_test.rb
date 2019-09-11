# frozen_string_literal: true

require "test_helper"
require "minitest/autorun"

# require "minitest_helper"

# class CrossPageTest < Minitest::Test
#    ["impro-a-marseille", "theatre-a-marseille", "lundi-a-marseille", "cours-de-theatre-mardi",
#    "cours-de-theatre-mercredi", "cours-a-marseille-jeudi", "vendredi-a-marseille", "weekend-a-marseille"].each do |slug|
#     test "testing crosspages loading for slug #{slug}" do
#       assert_routing "/#{slug}", { controller: "cross_pages", action: "show" }, {}, {}, "There is a
#       trouble on the following crosspage #{slug}"
#     end
#   end

#   # test "testing crosspages loading for slug mardi" do
#   #   assert_routing "/cours-de-theatre-mardi", { controller: "cross_pages", action: "show", slug: "cours-de-theatre-mardi" }, {}, {},
#   #                  "There is a trouble on the following crosspage mardi"
#   # end
# # end
# class CrosspageRouteTest < ActionDispatch::IntegrationTest
# ["impro-a-marseille", "theatre-a-marseille", "lundi-a-marseille", "cours-de-theatre-mardi",
# "cours-de-theatre-mercredi", "cours-a-marseille-jeudi", "vendredi-a-marseille", "weekend-a-marseille"].each do |slug|
#   describe "Crosspage #{slug} routing test" do
#     it "resolves the crosspage #{slug}" do
#       assert_routing "/#{slug}", controller: "cross_pages", action: "show"
#     end
#   end
# end
# end
class CrosspageRouteTest < ActionDispatch::IntegrationTest
  def test_crosspages
    ["impro-a-marseille", "theatre-a-marseille", "lundi-a-marseille", "cours-de-theatre-mardi",
"cours-de-theatre-mercredi", "cours-a-marseille-jeudi", "vendredi-a-marseille", "weekend-a-marseille"].each do |slug|
    assert_routing "/#{slug}", controller: "cross_pages", action: "show", slug: slug
  end
  end
end

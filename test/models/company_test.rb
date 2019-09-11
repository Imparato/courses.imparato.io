# frozen_string_literal: true

require "test_helper"
# require "minitest/autorun"

class CompaniesTest < ActionController::TestCase
  #   def test_that_it_has_a_version_number
  #     refute_nil ::Myproject::VERSION
  #   end

  #   def test_it_does_something_useful
  #     assert true # this will result in a failure
  #   end

  #   describe "My Project" do
  #     it "has a version number" do
  #       value(::Myproject::VERSION).wont_be_nil
  #     end

  #   it "does something useful" do
  #     value(4 + 4).must_equal 8
  #   end
  # end

  test "testing route to create a new company" do
    assert_routing "/companies/new", { controller: "companies", action: "new" }, {}, {}, "trouble creating company"
  end
end

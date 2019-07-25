require "application_system_test_case"

class CompaniesTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit "/"
    assert_selector "h1", text: "hello"
  end
end

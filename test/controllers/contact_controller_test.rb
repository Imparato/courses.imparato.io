# frozen_string_literal: true

require "test_helper"

class ContactControllerTest < ActionDispatch::IntegrationTest
  test "should get new form" do
    assert_routing '/contacts/new', controller: 'contacts', action: 'new'
  end
end

# visit new_contact_path
# fill_in "user", with: "User test 101"
# fill_in "email", with: "user_email@test.com"
# fill_in "body", with: "Testing the contact form"

# click_on "submit Article"

# assert_text "Creating an Article"

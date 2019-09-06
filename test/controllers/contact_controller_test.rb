# frozen_string_literal: true

require "test_helper"

class ContactControllerTest < ActionDispatch::IntegrationTest
<<<<<<< HEAD
  test "should get new form" do
    assert_routing '/contacts/new', controller: 'contacts', action: 'new'
=======
  test "creating a contact" do
    get new_contact_path
    assert_response :success, @response.body

>>>>>>> 03e16c27d8bc884d7893a7f85bbb94c600048e51
  end
end

# visit new_contact_path
# fill_in "user", with: "User test 101"
# fill_in "email", with: "user_email@test.com"
# fill_in "body", with: "Testing the contact form"

# click_on "submit Article"

# assert_text "Creating an Article"

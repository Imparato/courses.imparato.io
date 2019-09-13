require "application_system_test_case"

class ContactsTest < ApplicationSystemTestCase
  test "create new contact" do
    visit "/contacts/new"
    # save_and_open_screenshot

    fill_in "contact_user", with: "Test Contact"
    fill_in "contact_email", with: "capybara@test.fr"
    fill_in "contact_body", with: "Hello, test en cours..."
    # save_and_open_screenshot

    click_on 'Envoyer'
    # save_and_open_screenshot

    # Should be redirected to Home with new product
    assert_equal "/contacts/new", page.current_path
    assert_text "Contactez-nous"
  end
end

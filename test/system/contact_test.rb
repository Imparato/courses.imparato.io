# frozen_string_literal: true

require "application_system_test_case"
require "test_helper"

class ContactTest < ApplicationSystemTestCase
  setup do
    mock_cloudinary_upload
  end

  test "Fill form - Contactez-nous" do
    marseille_site = FactoryBot.create(:site)
    SitesController.any_instance.stubs(:find_domain_from_url).returns(marseille_site.domain_name)
    contact_marseille = FactoryBot.create(:contact)
    ContactsController.any_instance.stubs(:find_site).returns(marseille_site)
    visit root_path
    click_on "Contactez-nous"
    @site = marseille_site
    fill_in("contact_user", with: "John")
    fill_in("contact_email", with: "John@test.com")
    fill_in("contact_body", with: "It's a trap")
    click_button "Envoyer"
    assert_equal root_path, page.current_path
    # save_and_open_page
  end
end

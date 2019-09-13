require "application_system_test_case"

class CompaniesTest < ApplicationSystemTestCase
  test "create new company" do
    visit "/companies/new"
    # save_and_open_screenshot

    fill_in "company_name", with: "Test créa compagnie"
    fill_in "company_address", with: "Rue du test heureux."
    fill_in "company_mail", with: "capybara@test.fr"
    fill_in "company_phone", with: "06 13 13 13 13"
    fill_in "company_website", with: "www.test-ftw.fr"
    fill_in "company_description", with: "Compagnie crée par Capybara"

    # save_and_open_screenshot

    click_on 'Envoyer'
    # save_and_open_screenshot

    # Should be redirected to Home with new product
    assert_equal "/companies/new", page.current_path
    assert_text "Proposez vos cours"
  end
end

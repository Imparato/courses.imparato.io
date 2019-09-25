require 'test_helper'
require 'application_system_test_case'
class CrossPageTest < ApplicationSystemTestCase

  test "visiting the cross_pages and the home button" do
    impro_tag = FactoryBot.create(:tag)
    # binding.pry
    impro_crosspage = FactoryBot.create(:cross_page)
    SitesController.any_instance.stubs(:find_domain_from_url).returns(Site.first.domain_name)
    impro_crosspage.tags = [impro_tag]
    visit root_path
    save_and_open_page
    click_on "IMPRO"
    save_and_open_page
    assert_equal "/impro-a-marseille", page.current_path
    click_button('Accueil')
    assert_equal root_path, page.current_path
    save_and_open_page
  end
end

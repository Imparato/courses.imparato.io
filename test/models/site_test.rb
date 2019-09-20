require 'test_helper'


class SiteTest < ApplicationSystemTestCase

  # def setup
  #   @site = Site.find_by(name: "marseille")
  # end

  test "visiting the index" do
    marseille_site = FactoryBot.create(:site)
    p marseille_site.domain_name
    SitesController.any_instance.stubs(:find_domain_from_url).returns(marseille_site.domain_name)
    visit root_path
    save_and_open_page
    assert_selector "h2", text: "Trouvez la troupe qui vous correspond"
  end

  test "click Contactez-nous" do
    marseille_site = FactoryBot.create(:site)
    SitesController.any_instance.stubs(:find_domain_from_url).returns(marseille_site.domain_name)
    contact_marseille = FactoryBot.create(:contact)
    # ContactsController.any_instance.stubs(:new).returns(marseille_site)
    ContactsController.any_instance.stubs(:find_site_stub).returns(marseille_site)
    visit root_path
    click_on "Contactez-nous"
    save_and_open_page
    assert_equal new_contact_path, page.current_path
    # assert_text "Contactez-nous"
  end

#   test "click Proposez votre cours - navbar" do
#     visit "/"
#     click_link "first-course"
#     assert_equal "/companies/new", page.current_path
#     assert_text "Proposez vos cours"
#   end

#   test "click Proposez votre cours - footer" do
#     visit "/"
#     click_link "second-course"
#     assert_equal "/companies/new", page.current_path
#     assert_text "Proposez vos cours"
#   end
end

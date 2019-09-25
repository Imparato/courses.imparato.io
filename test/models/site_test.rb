# require 'test_helper'
# require 'application_system_test_case'

# class SiteTest < ApplicationSystemTestCase
#   test "visiting the index" do
#     marseille_site = FactoryBot.create(:site)
#     p marseille_site.domain_name
#     SitesController.any_instance.stubs(:find_domain_from_url).returns(marseille_site.domain_name)
#     visit root_path
#     # save_and_open_page
#     assert_selector "h2", text: "Trouvez la troupe qui vous correspond"
#   end

#   test "click Contactez-nous" do
#     marseille_site = FactoryBot.create(:site)
#     SitesController.any_instance.stubs(:find_domain_from_url).returns(marseille_site.domain_name)
#     ContactsController.any_instance.stubs(:find_site).returns(marseille_site)
#     contact_marseille = FactoryBot.create(:contact)
#     visit root_path
#     click_on "Contactez-nous"
#     @site = marseille_site
#     # save_and_open_page
#     assert_equal new_contact_path, page.current_path
#     assert_text "Contactez-nous"
#   end

#   test "click Proposez votre cours - navbar" do
#     marseille_site = FactoryBot.create(:site)
#     SitesController.any_instance.stubs(:find_domain_from_url).returns(marseille_site.domain_name)
#     company_marseille = FactoryBot.create(:company)
#     CompaniesController.any_instance.stubs(:find_site).returns(marseille_site)
#     visit root_path
#     click_link "first-course"
#     # save_and_open_page
#     @site = marseille_site
#     assert_equal new_company_path, page.current_path
#     assert_button "Envoyer"
#   end
# end

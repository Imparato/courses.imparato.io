# require "application_system_test_case"
# require 'test_helper'

# class CompanyTest < ApplicationSystemTestCase
#   test "Fill form - Proposez votre cours" do
#     marseille_site = FactoryBot.create(:site)
#     SitesController.any_instance.stubs(:find_domain_from_url).returns(marseille_site.domain_name)
#     company_marseille = FactoryBot.create(:company)
#     CompaniesController.any_instance.stubs(:find_site).returns(marseille_site)
#     visit root_path
#     click_link "first-course"
#     @site = marseille_site
#     fill_in('company_name', :with => 'John')
#     fill_in('company_address', :with => '13 rue des tests')
#     fill_in('company_mail', :with => 'John@test.com')
#     fill_in('company_phone', :with => '118 218')
#     fill_in('company_website', :with => 'tests.com')
#     fill_in('company_description', :with => "what's in the box")
#     click_button "Envoyer"
#     assert_equal root_path, page.current_path
#     # page.has_css?('div .alert-info')
#   end
# end

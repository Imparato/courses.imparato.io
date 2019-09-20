require "application_system_test_case"

class SiteTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit "http://coursdetheatremarseille.com:3000/"
    # save_and_open_screenshot
    assert_selector "h2", text: "Trouvez la troupe qui vous correspond"
  end

  test "find one" do
    assert_equal "Marseille", sites(:one).name
  end
  # test "click Contactez-nous" do
  #   visit "/"
  #   click_on "Contactez-nous"
  #   assert_equal "/contacts/new", page.current_path
  #   assert_text "Contactez-nous"
  # end

  # test "click Proposez votre cours - navbar" do
  #   visit "/"
  #   click_link "first-course"
  #   assert_equal "/companies/new", page.current_path
  #   assert_text "Proposez vos cours"
  # end

  # test "click Proposez votre cours - footer" do
  #   visit "/"
  #   click_link "second-course"
  #   assert_equal "/companies/new", page.current_path
  #   assert_text "Proposez vos cours"
  # end
end

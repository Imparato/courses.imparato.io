
require "application_system_test_case"

class SitesTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit "/"
    assert_selector "h2", text: "Trouvez la troupe qui vous correspond"
  end
end

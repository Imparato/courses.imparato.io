# frozen_string_literal: true

require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "visiting the homepage" do
    visit "/"
    assert_selector "h1", text: "Souhaitez-vous vous afficher sous les projecteurs?"

  end
end

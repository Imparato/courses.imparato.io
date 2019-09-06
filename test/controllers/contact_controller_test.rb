# frozen_string_literal: true

require "test_helper"

class ContactControllerTest < ActionDispatch::IntegrationTest
  test "should get new form" do
    assert_routing '/contacts/new', controller: 'contacts', action: 'new'
  end
end

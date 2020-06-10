# frozen_string_literal: true

ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"
require "capybara/rails"
require "capybara/minitest"
require "minitest/rails"
require "mocha/minitest"

class ActiveSupport::TestCase
  # [...]

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  include FactoryBot::Syntax::Methods
  # Add more helper methods to be used by all tests here...
  # Devise test helpers
  include Warden::Test::Helpers
  Warden.test_mode!
end

Capybara.save_path = Rails.root.join("tmp/capybara")

# frozen_string_literal: true

class Site < ApplicationRecord
  has_many :companies, :cross_pages
end

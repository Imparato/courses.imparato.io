# frozen_string_literal: true

class Site < ApplicationRecord
  has_many :companies
  has_many :cross_pages
end

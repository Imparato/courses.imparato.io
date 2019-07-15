# frozen_string_literal: true

class Tag < ApplicationRecord
  has_and_belongs_to_many :companies
  has_and_belongs_to_many :cross_pages
  validates :name, presence: true
  validates_uniqueness_of :name
end

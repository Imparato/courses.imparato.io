# frozen_string_literal: true

class Site < ApplicationRecord
  has_many :companies
  has_many :cross_pages
  validates :name, :domain_name, :meta_title, :meta_description, presence: true
  validates :banner, :title, :description, :analytics, presence: true
end

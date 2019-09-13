# frozen_string_literal: true

class Site < ApplicationRecord
  has_many :companies, dependent: :destroy
  has_many :cross_pages, dependent: :destroy
  has_many :contacts, dependent: :destroy
  validates :name, :domain_name, :meta_title, :meta_description, presence: true
  validates :banner, :title, :description, :analytics, presence: true
  mount_uploader :banner, BannerUploader
end

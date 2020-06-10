# frozen_string_literal: true

class CrossPage < ApplicationRecord
  belongs_to :site
  has_and_belongs_to_many :tags, -> { order(:order) }
  validates :slug, :title, :description, presence: true
  validates :meta_title, :meta_description, :banner, presence: true
  mount_uploader :banner, BannerUploader
end

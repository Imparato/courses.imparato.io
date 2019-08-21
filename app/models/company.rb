# frozen_string_literal: true

class Company < ApplicationRecord
  paginates_per 5
  belongs_to :site
  has_and_belongs_to_many :tags
  validates :name, :address, :description, presence: true

  mount_uploader :picture, PictureUploader
  # need to add validation on at least one field phone, mail or website
end

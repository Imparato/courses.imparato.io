# frozen_string_literal: true

class Company < ApplicationRecord
  belongs_to :site
  has_and_belongs_to_many :tags
  validates :name, :address, :description, presence: true
  validate :validate_contact

  paginates_per 5
  mount_uploader :picture, PictureUploader
  # need to add validation on at least one field phone, mail or website
  def validate_contact
    if phone.blank? && mail.blank? && website.blank?
      errors.add(:mail, "You must fill in at least one contact field")
    end
  end
end

# frozen_string_literal: true

class CrossPage < ApplicationRecord
  belongs_to :site
  has_and_belongs_to_many :tags
  validates :slug, :title, :desciption, :active, presence: true
  validates :meta_title, :meta_description, presence: true
end

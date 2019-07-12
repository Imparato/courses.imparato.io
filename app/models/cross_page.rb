# frozen_string_literal: true

class CrossPage < ApplicationRecord
  belongs_to :site
  has_and_belongs_to_many :tags
end

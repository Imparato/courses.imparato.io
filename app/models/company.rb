# frozen_string_literal: true

class Company < ApplicationRecord
  belongs_to :site
  has_and_belongs_to_many :tags
end

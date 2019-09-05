# frozen_string_literal: true

class Contact < ApplicationRecord
  belongs_to :site
  validates :user, :email, :body, presence: true
end

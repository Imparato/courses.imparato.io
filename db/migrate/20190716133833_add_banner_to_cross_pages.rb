# frozen_string_literal: true

class AddBannerToCrossPages < ActiveRecord::Migration[5.2]
  def change
    add_column :cross_pages, :banner, :string
  end
end

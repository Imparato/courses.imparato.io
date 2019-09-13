# frozen_string_literal: true

class AddOrderToTags < ActiveRecord::Migration[5.2]
  def change
    add_column :tags, :order, :integer
  end
end

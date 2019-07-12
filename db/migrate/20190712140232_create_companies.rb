# frozen_string_literal: true

class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :mail
      t.text :description
      t.float :lat
      t.float :lng
      t.references :site, foreign_key: true

      t.timestamps
    end
  end
end

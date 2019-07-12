# frozen_string_literal: true

class CreateCrossPages < ActiveRecord::Migration[5.2]
  def change
    create_table :cross_pages do |t|
      t.string :slug
      t.string :title
      t.text :description
      t.boolean :active
      t.string :meta_title
      t.text :meta_description
      t.references :site, foreign_key: true

      t.timestamps
    end
  end
end

# frozen_string_literal: true

class CreateSites < ActiveRecord::Migration[5.2]
  def change
    create_table :sites do |t|
      t.string :name, :domain_name, :meta_title
      t.text :meta_description
      t.string :banner
      t.string :title
      t.text :description
      t.boolean :active
      t.string :analytics_id

      t.timestamps
    end
  end
end

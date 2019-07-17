# frozen_string_literal: true

class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :user
      t.string :user_info
      t.string :email
      t.string :body

      t.timestamps
    end
  end
end

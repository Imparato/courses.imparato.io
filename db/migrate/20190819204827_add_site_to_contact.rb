# frozen_string_literal: true

class AddSiteToContact < ActiveRecord::Migration[5.2]
  def change
    add_reference :contacts, :site, foreign_key: true
    add_column :contacts, :read, :boolean, default: false
    remove_column :contacts, :user_info
  end
end

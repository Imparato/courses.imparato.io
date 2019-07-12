# frozen_string_literal: true

class CreateJoinTables < ActiveRecord::Migration[5.2]
  def change
    create_join_table :companies, :tags
    create_join_table :cross_pages, :tags
  end
end

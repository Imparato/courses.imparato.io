# frozen_string_literal: true

class RenameAnalyticsIdColumnInSites < ActiveRecord::Migration[5.2]
  def change
    rename_column :sites, :analytics_id, :analytics
  end
end

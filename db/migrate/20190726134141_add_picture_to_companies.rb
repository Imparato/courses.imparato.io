class AddPictureToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :picture, :string
  end
end

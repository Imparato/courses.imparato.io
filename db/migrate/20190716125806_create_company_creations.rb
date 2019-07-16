class CreateCompanyCreations < ActiveRecord::Migration[5.2]
  def change
    create_table :company_creations do |t|
      t.string :name
      t.string :address
      t.string :mail
      t.text :description
      t.string :city

      t.timestamps
    end
  end
end

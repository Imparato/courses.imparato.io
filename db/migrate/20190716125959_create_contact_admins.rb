class CreateContactAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :contact_admins do |t|
      t.string :user
      t.string :contact
      t.string :object
      t.text :body

      t.timestamps
    end
  end
end

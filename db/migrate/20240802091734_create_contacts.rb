class CreateContacts < ActiveRecord::Migration[7.1]
  def change
    create_table :contacts do |t|
      t.string :url
      t.references :profile, null: false, foreign_key: true
      t.references :contact_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end

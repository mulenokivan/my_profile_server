class CreateExtras < ActiveRecord::Migration[7.1]
  def change
    create_table :extras do |t|
      t.text :text
      t.references :profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end

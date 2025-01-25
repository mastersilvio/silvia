class CreateProfiles < ActiveRecord::Migration[8.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.text :description
      t.boolean :active

      t.timestamps
    end
    add_index :profiles, :name
  end
end

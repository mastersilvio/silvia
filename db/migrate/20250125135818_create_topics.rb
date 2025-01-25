class CreateTopics < ActiveRecord::Migration[8.0]
  def change
    create_table :topics do |t|
      t.string :name
      t.text :description
      t.boolean :active

      t.timestamps
    end
    add_index :topics, :name
  end
end

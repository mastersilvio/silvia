class CreateGrades < ActiveRecord::Migration[8.0]
  def change
    create_table :grades do |t|
      t.string :name
      t.text :description
      t.boolean :active
      t.integer :order
      t.string :level

      t.timestamps
    end
    add_index :grades, :name
    add_index :grades, :order
  end
end

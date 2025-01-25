class CreateSubjects < ActiveRecord::Migration[8.0]
  def change
    create_table :subjects do |t|
      t.string :name
      t.text :description
      t.boolean :active

      t.timestamps
    end
    add_index :subjects, :name
  end
end

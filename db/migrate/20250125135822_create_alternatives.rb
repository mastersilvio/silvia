class CreateAlternatives < ActiveRecord::Migration[8.0]
  def change
    create_table :alternatives do |t|
      t.text :content
      t.references :question, null: false, foreign_key: true
      t.boolean :correct
      t.integer :order

      t.timestamps
    end
  end
end

class CreateQuestions < ActiveRecord::Migration[8.0]
  def change
    create_table :questions do |t|
      t.text :content
      t.references :question_type, null: false, foreign_key: true
      t.integer :difficulty_level
      t.decimal :points
      t.text :explanation
      t.boolean :active

      t.timestamps
    end
  end
end

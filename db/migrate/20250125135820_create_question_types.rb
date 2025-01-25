class CreateQuestionTypes < ActiveRecord::Migration[8.0]
  def change
    create_table :question_types do |t|
      t.string :name
      t.text :description
      t.boolean :active

      t.timestamps
    end
    add_index :question_types, :name
  end
end

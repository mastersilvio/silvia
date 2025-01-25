class CreateAnswers < ActiveRecord::Migration[8.0]
  def change
    create_table :answers do |t|
      t.references :question, null: false, foreign_key: true
      t.references :exam, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.text :answer
      t.decimal :points

      t.timestamps
    end
  end
end

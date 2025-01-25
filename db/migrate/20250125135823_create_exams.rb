class CreateExams < ActiveRecord::Migration[8.0]
  def change
    create_table :exams do |t|
      t.string :title
      t.text :description
      t.references :subject, null: false, foreign_key: true
      t.references :topic, null: false, foreign_key: true
      t.integer :duration_in_minutes
      t.datetime :start_date
      t.datetime :end_date
      t.string :status
      t.decimal :passing_score
      t.boolean :shuffle_questions

      t.timestamps
    end
  end
end

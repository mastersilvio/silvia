class CreateLogs < ActiveRecord::Migration[8.0]
  def change
    create_table :logs do |t|
      t.references :user, null: false, foreign_key: true
      t.string :action
      t.text :message
      t.datetime :date

      t.timestamps
    end
  end
end

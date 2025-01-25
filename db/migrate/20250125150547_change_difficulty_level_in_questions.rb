class ChangeDifficultyLevelInQuestions < ActiveRecord::Migration[8.0]
  def up
    change_column :questions, :difficulty_level, :string
    execute "UPDATE questions SET difficulty_level = CASE
      WHEN difficulty_level = '1' THEN 'fácil'
      WHEN difficulty_level = '2' THEN 'médio'
      WHEN difficulty_level = '3' THEN 'difícil'
      ELSE 'médio' END"
  end

  def down
    execute "UPDATE questions SET difficulty_level = CASE
      WHEN difficulty_level = 'fácil' THEN '1'
      WHEN difficulty_level = 'médio' THEN '2'
      WHEN difficulty_level = 'difícil' THEN '3'
      ELSE '2' END"
    change_column :questions, :difficulty_level, :integer
  end
end

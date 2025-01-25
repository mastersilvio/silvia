json.extract! question, :id, :content, :question_type_id, :difficulty_level, :points, :explanation, :active, :created_at, :updated_at
json.url question_url(question, format: :json)

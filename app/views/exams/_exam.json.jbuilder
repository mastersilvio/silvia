json.extract! exam, :id, :title, :description, :subject_id, :topic_id, :duration_in_minutes, :start_date, :end_date, :status, :passing_score, :shuffle_questions, :created_at, :updated_at
json.url exam_url(exam, format: :json)

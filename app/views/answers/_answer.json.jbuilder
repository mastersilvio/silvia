json.extract! answer, :id, :question_id, :exam_id, :user_id, :answer, :points, :created_at, :updated_at
json.url answer_url(answer, format: :json)

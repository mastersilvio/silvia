json.extract! topic, :id, :name, :description, :active, :created_at, :updated_at
json.url topic_url(topic, format: :json)

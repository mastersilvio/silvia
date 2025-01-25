json.extract! log, :id, :user_id, :action, :message, :date, :created_at, :updated_at
json.url log_url(log, format: :json)

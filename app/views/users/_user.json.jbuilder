json.extract! user, :id, :name, :phone, :description, :document_uid, :document_name, :url, :sort, :created_at, :updated_at
json.url user_url(user, format: :json)

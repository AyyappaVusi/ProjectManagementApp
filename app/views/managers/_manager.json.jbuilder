json.extract! manager, :id, :name, :experience, :created_at, :updated_at, :email, :password
json.url manager_url(manager, format: :json)

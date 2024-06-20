json.extract! employee, :id, :name, :email, :salary, :manager_id, :team_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)

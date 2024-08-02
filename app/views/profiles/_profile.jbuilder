json.extract! profile, :id, :name, :status, :created_at, :updated_at
json.url profile_url(profile, format: :json)

json.extract! contact, :id, :url, :profile_id, :contact_type_id, :created_at, :updated_at
json.url contact_url(contact, format: :json)

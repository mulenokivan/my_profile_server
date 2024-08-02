json.extract! profile, :id, :name, :status
json.avatar (rails_blob_url(profile.avatar) rescue nil)

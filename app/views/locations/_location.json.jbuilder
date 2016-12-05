json.extract! location, :id, :latitude, :longitude, :mail_item_id, :created_at, :updated_at
json.url location_url(location, format: :json)
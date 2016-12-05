json.extract! user, :id, :first_name, :last_name, :andrew_id, :username, :password_digest, :facilities, :created_at, :updated_at
json.url user_url(user, format: :json)
json.extract! user, :id, :user_name, :email, :password_digest, :account_id, :created_at, :updated_at
json.url user_url(user, format: :json)

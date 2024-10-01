json.extract! user_interest, :id, :interest, :created_at, :updated_at
json.url user_interest_url(user_interest, format: :json)

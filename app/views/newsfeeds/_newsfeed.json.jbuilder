json.extract! newsfeed, :id, :title, :message, :user_id, :created_at, :updated_at
json.url newsfeed_url(newsfeed, format: :json)
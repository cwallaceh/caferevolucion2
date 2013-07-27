json.array!(@posts) do |post|
  json.extract! post, :title, :category, :body, :created_at, :updated_at, :user_id
  json.url post_url(post, format: :json)
end

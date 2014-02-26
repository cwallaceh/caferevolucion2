json.array!(@posts) do |post|
  json.extract! post, :user_id, :title, :category, :body
  json.url post_url(post, format: :json)
end

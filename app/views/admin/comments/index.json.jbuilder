json.array!(@comments) do |comment|
  json.extract! comment, :id, :user_id, :place_id, :description, :rate
  json.url comment_url(comment, format: :json)
end

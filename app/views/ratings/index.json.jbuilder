json.array!(@ratings) do |rating|
  json.extract! rating, :id, : rating, :user_id, :movie_id
  json.url rating_url(rating, format: :json)
end

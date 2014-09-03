json.array!(@video_dbs) do |video_db|
  json.extract! video_db, :id, : title, :year, :actor, :maingenere, :genere
  json.url video_db_url(video_db, format: :json)
end

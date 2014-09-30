json.array!(@flocks) do |flock|
  json.extract! flock, :id, :hens, :males, :hen_feed, :male_feed, :water_meter, :open_date, :close_date, :house_id
  json.url flock_url(flock, format: :json)
end

json.array!(@takes) do |take|
  json.extract! take, :id, :class, :teacher
  json.url take_url(take, format: :json)
end

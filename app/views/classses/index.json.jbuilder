json.array!(@classses) do |classs|
  json.extract! classs, :id, :class_name, :room_no, :section
  json.url classs_url(classs, format: :json)
end

json.array!(@enrolls) do |enroll|
  json.extract! enroll, :id, :date, :Student, :classs
  json.url enroll_url(enroll, format: :json)
end

json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :name, :father_name, :CINC, :qualification, :joining_date, :gender, :religion, :contact, :address
  json.url teacher_url(teacher, format: :json)
end

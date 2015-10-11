json.array!(@students) do |student|
  json.extract! student, :id, :s_name, :f_name, :DOB, :religion, :address, :father_occupation, :CNIC, :phone_no, :email, :distric, :gender
  json.url student_url(student, format: :json)
end

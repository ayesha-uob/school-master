json.array!(@exams) do |exam|
  json.extract! exam, :id, :subject, :ename, :edate, :teacher_id, :enroll_id
  json.url exam_url(exam, format: :json)
end

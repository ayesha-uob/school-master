class Exam < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :enroll
end

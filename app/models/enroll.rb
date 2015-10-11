class Enroll < ActiveRecord::Base
belongs_to :student
belongs_to :classs
has_many :exams
end

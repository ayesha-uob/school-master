class Student < ActiveRecord::Base
has_many :enrolls
has_many :fees
end

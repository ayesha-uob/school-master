class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.string :subject
      t.string :ename
      t.date :edate
      t.references :teacher, index: true
      t.references :enroll, index: true

      t.timestamps null: false
    end
    add_foreign_key :exams, :teachers
    add_foreign_key :exams, :enrolls
  end
end

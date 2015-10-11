class CreateExams < ActiveRecord::Migration
  def change
    create_table :Exams do |t|
      t.string :subject
      t.date :date
      t.string :grade
      t.references :enroll

      t.timestamps null: false
    end
  end
end

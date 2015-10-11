class CreateEnrolls < ActiveRecord::Migration
  def change
    create_table :Enrolls do |t|
      t.date :date
      t.references :Student
      t.references :classs

      t.timestamps null: false
    end
  end
end

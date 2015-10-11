class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :father_name
      t.string :CINC
      t.string :qualification
      t.date :joining_date
      t.string :gender
      t.string :religion
      t.string :contact
      t.string :address

      t.timestamps null: false
    end
  end
end

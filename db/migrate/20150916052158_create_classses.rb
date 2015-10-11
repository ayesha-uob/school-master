class CreateClassses < ActiveRecord::Migration
  def change
    create_table :classses do |t|
      t.string :class_name
      t.string :room_no
      t.string :section

      t.timestamps null: false
    end
  end
end
